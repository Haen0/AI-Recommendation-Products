
    <div class="hidden">
        
        <h1>TF-IDF Scores</h1>

        <h2>Individual Word Scores</h2>

        <table border="1">
            <thead>
                <tr>
                    <th>Product</th>
                    @foreach($wordssss as $word)
                        <th>{{ $word }}</th>
                    @endforeach
                </tr>
            </thead>
            <tbody>
                @foreach($products as $product)
                    <tr>
                        <td>{{ $product->name }}</td>
                        @foreach($wordssss as $word)
                            <td>{{ isset($nilaiProduk[$word][$product->id]) ? $nilaiProduk[$word][$product->id] : 0 }}</td>
                        @endforeach
                    </tr>
                @endforeach
            </tbody>
        </table>

        <h2>Total Scores for Each Word</h2>

        <table border="1">
            <thead>
                <tr>
                    <th>Word</th>
                    <th>Total Score</th>
                    <th>Average Score</th>
                    <th>IDF Score</th>
                </tr>
            </thead>
            <tbody>
                @foreach($wordssss as $word)
                    <tr>
                        <td>{{ $word }}</td>
                        <td>{{ $totalNilai[$word] }}</td>
                        <td>{{ $avgNilai[$word] }}</td>
                        <td>{{ $idf[$word] }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        
        <h2>Individual Word Scores</h2>

        <table border="1">
            <thead>
                <tr>
                    <th>Product</th>
                    @foreach($wordssss as $word)
                        <th>{{ $word }}</th>
                    @endforeach
                    <th>Total Score with IDF</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $produkWithNilai = [];
                @endphp
                @foreach($products as $product)
                    <tr>
                        <td>{{ $product->name }}</td>
                        @php
                            $totalNilaiWithIDF = 0;
                        @endphp
                        @foreach($wordssss as $word)
                            @php
                                $idfValue = isset($idf[$word]) ? $idf[$word] : 0;
                                $nilaiWithIDF = isset($nilaiProduk[$word][$product->id]) ? $nilaiProduk[$word][$product->id] * $idfValue : 0;
                                $totalNilaiWithIDF += $nilaiWithIDF;
                            @endphp
                            <td>{{ $nilaiWithIDF }}</td>
                        @endforeach
                        <td>{{ $totalNilaiWithIDF }}</td>
                    </tr>
                    @php
                        $produkWithNilai[$product->id] = $totalNilaiWithIDF;
                    @endphp
                @endforeach
            </tbody>
        </table>
            
        @php
            arsort($produkWithNilai);
        @endphp
        
        <h2>Products Sorted by Total Score with IDF</h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Product ID</th>
                    <th>Total Score with IDF</th>
                </tr>
            </thead>
            <tbody>
                @foreach($produkWithNilai as $productId => $totalNilai)
                    <tr>
                        <td>{{ $productId }}</td>
                        <td>{{ $totalNilai }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
        
    </div>

    <div class="flex flex-wrap gap-5 justify-center">
        @foreach($produkWithNilai as $productId => $totalNilai)
            @php
                $product = $products->firstWhere('id', $productId);
            @endphp
    
            <div class="w-40 bg-white border border-gray-200 rounded-xl shadow dark:bg-gray-800 dark:border-gray-700">
                <form action="{{ route('simpanNama', ['id' => $product->id]) }}" method="POST">
                    @csrf
                    <input type="hidden" name="productName" value="{{ $product->name }}">
                        <button type="submit">
                        <img class="h-40 w-40 rounded-t-xl bg-black object-cover" src="{{ asset('storage/' . $product->image1) }}" alt="product image" />
                        <div class="px-5 pb-4">
                            <p class="line-clamp-2 whitespace-normal text-sm my-3 tracking-tight text-gray-900 dark:text-white">{{ $product->name }}</p>
                            <div class="end">
                                <div class="flex items-center mt-5 mb-3">
                                    <div class="flex items-center space-x-0 rtl:space-x-reverse">
                                        <svg class="w-4 h-4 text-gray-200 dark:text-gray-600" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                                        </svg>
                                        <svg class="w-4 h-4 text-gray-200 dark:text-gray-600" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                                        </svg>
                                        <svg class="w-4 h-4 text-gray-200 dark:text-gray-600" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                                        </svg>
                                        <svg class="w-4 h-4 text-gray-200 dark:text-gray-600" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                                        </svg>
                                        <svg class="w-4 h-4 text-gray-200 dark:text-gray-600" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 22 20">
                                            <path d="M20.924 7.625a1.523 1.523 0 0 0-1.238-1.044l-5.051-.734-2.259-4.577a1.534 1.534 0 0 0-2.752 0L7.365 5.847l-5.051.734A1.535 1.535 0 0 0 1.463 9.2l3.656 3.563-.863 5.031a1.532 1.532 0 0 0 2.226 1.616L11 17.033l4.518 2.375a1.534 1.534 0 0 0 2.226-1.617l-.863-5.03L20.537 9.2a1.523 1.523 0 0 0 .387-1.575Z"/>
                                        </svg>
                                    </div>
                                    <span class="bg-blue-100 text-blue-800 text-xs font-semibold px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ms-3">0.0</span>
                                </div>
                                <div class="flex items-center justify-between">
                                    <span class="text-md font-semibold text-gray-900 dark:text-white">Rp{{ number_format($product->price, 0, ',', '.') }}</span>
                                </div>
                            </div>
                        </div>
                    </button>
                </form>
            </div>
        @endforeach
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
</body>
</html>
