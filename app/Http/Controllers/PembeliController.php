<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\WordCount;
use Illuminate\Http\Request;

class PembeliController extends Controller
{
    public function search(Request $request)
    {
        $search = $request->input('search');
        if ($search) {
            $products = Product::where('name', 'LIKE', "%{$search}%")
                ->orWhere('description', 'LIKE', "%{$search}%")
                ->get();
        } else {
            $products = Product::all();
        }

        return view('cari', compact('products'));
    }

    public function dashboard()
    {
        $products = Product::all();
        $semuaKata = [];

        $topWords = WordCount::orderBy('count', 'desc')->take(5)->get();

        //Menghitung TF (Membandingkan semua nama produk dengan kata kunci)
        $nilaiProduk = [];
        foreach ($products as $product) {
            $words = explode(' ', $product->name);
            foreach ($topWords as $topWord) {
                foreach ($words as $word) {
                    if ($topWord->word == $word) { 
                        if (!isset($nilaiProduk[$topWord->word][$product->id])) {
                            $nilaiProduk[$topWord->word][$product->id] = 0;
                        }
                        $nilaiProduk[$topWord->word][$product->id]++;
                    }
                }
            }
        }
        // dd($nilaiProduk);

        //Menghitung DF (Menghitung jumlah produk pada masing-masing kata kunci)
        $totalNilai = [];
        foreach ($topWords as $topWord) {
            $totalNilai[$topWord->word] = 0;

            foreach ($products as $product) {
                if (isset($nilaiProduk[$topWord->word][$product->id])) {
                    $totalNilai[$topWord->word]++;
                }
            }
        }
        // dd($totalNilai);

        // Menghitung D/df (Total produk dibagi df)
        $totalProduk = Product::count();
        $ddfNilai = [];
        $idf = [];
        foreach ($topWords as $topWord) {
            $ddfNilai[$topWord->word] = $totalProduk / ($totalNilai[$topWord->word]);
            //Menghitung IDF (Log D/df)
            $idf[$topWord->word] = log($ddfNilai[$topWord->word]);
            // $idf[$topWord->word] = log($totalProduk / ($totalNilai[$topWord->word]));
        }

        //Menghitung TF dengan IDF
        $bobotProducts = [];
        foreach ($products as $product) {
            foreach ($topWords as $topWord) {
                if (isset($nilaiProduk[$topWord->word][$product->id])) {
                    $bobotProducts[$topWord->word][$product->id] = $idf[$topWord->word] * $nilaiProduk[$topWord->word][$product->id];
                }
            }
        }
        // dd($bobotProducts);

        $totalBobotProducts = [];
        foreach ($products as $product) {
            $totalBobot = 0;
            foreach ($topWords as $topWord) {
                if (isset($bobotProducts[$topWord->word][$product->id])) {
                    $totalBobot += $bobotProducts[$topWord->word][$product->id];
                }
            }
            $totalBobotProducts[$product->id] = $totalBobot;
        }
        arsort($totalBobotProducts);
        // dd($totalBobotProducts);

        return view('pembeli', compact('totalBobotProducts', 'products'));
    }
}
