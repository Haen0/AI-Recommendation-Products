<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\WordCount;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class PProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return view('pembeli.produk', compact('products'));
    }

    public function showDetail($id)
    {
        $product = Product::find($id);

        return view('detailProduk', ['product' => $product]);
    }

    public function SimpanNama(Request $request, $id)
    {
        $productName = $request->input('productName');
        $words = explode(' ', $productName);

        foreach ($words as $word) {
            $wordss = WordCount::where('word', $word)->first();

            if ($wordss) {
                $wordss->increment('count');
            } else {
                WordCount::create(['word' => $word, 'count' => 1]);
            }
        }

        return redirect()->route('showDetail', ['id' => $id])->with('success', 'Product name has been saved to the database');
    }

}
