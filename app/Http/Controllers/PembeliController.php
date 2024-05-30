<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class PembeliController extends Controller
{
    public function dashboard()
    {
        $products = Product::all();
        return view('pembeli', compact('products'));
    }

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

}
