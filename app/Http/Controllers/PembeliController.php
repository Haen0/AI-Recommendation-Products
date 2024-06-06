<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\WordCount;
use Illuminate\Http\Request;

class PembeliController extends Controller
{
    // public function dashboard()
    // {
    //     $products = Product::all();
    //     return view('pembeli', compact('products'));
    // }

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
        
        //Pecah semua nama produk
        foreach ($products as $product) {
            $words = explode(' ', $product->name);
            
            foreach ($words as $word) {
                if (!in_array($word, $semuaKata)) {
                    $semuaKata[] = $word;
                }
            }
        }

        //Kata dengan nilai tertinggi
        $topWords = WordCount::orderBy('count', 'desc')->take(5)->get();
        
        //Cek semua nama produk dengan kata kunci
        $wordssss = [];
        foreach ($topWords as $topWord) {
            if (in_array($topWord->word, $semuaKata)) {
                $wordssss[] = $topWord->word;
            }
        }
        
        //Mulai perhitungan TF IDF
        $nilaiProduk = [];
        foreach ($products as $product) {
            $words = explode(' ', $product->name);
            foreach ($wordssss as $word) {
                if (in_array($word, $words)) {
                    if (!isset($nilaiProduk[$word][$product->id])) {
                        $nilaiProduk[$word][$product->id] = 0;
                    }
                    $nilaiProduk[$word][$product->id]++;
                }
            }
        }

        $totalNilai = [];
        foreach ($wordssss as $word) {
            $totalNilai[$word] = 0;

            foreach ($products as $product) {
                if (isset($nilaiProduk[$word][$product->id])) {
                    $totalNilai[$word] += $nilaiProduk[$word][$product->id];
                }
            }
        }

        $totalProduk = Product::count();
        $avgNilai = [];
        $idf = [];
        foreach ($wordssss as $word) {
            $avgNilai[$word] = $totalProduk / ($totalNilai[$word]);
            $idf[$word] = log($totalProduk / ($totalNilai[$word]));
        }

        return view('pembeli', compact('nilaiProduk', 'products', 'wordssss', 'totalNilai', 'avgNilai', 'idf'));
    }
}
