<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.css" rel="stylesheet" />
    <title>Ai</title>
</head>

<div class="flex flex-wrap gap-5 justify-center pt-3">

    <a href="{{ url()->previous() }}" class="text-lg font-semibold my-5">
        <svg class="w-6 h-6 text-gray-800" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" viewBox="0 0 24 24">
            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M5 12h14M5 12l4-4m-4 4 4 4"/>
        </svg>
    </a>

    <div class="grid gap-4 pt-5">
        <div id="featured-image-container" class="h-60">
            <img class="w-80 h-60 object-cover rounded-lg" src="{{ asset('storage/' . $product->image1) }}" alt="">
        </div>
        <div class="flex gap-4">
            <div>
                <img class="w-24 h-24 object-cover rounded-lg" src="{{ asset('storage/' . $product->image1) }}" alt="" onclick="changeFeaturedImage(this)">
            </div>
            <div>
                <img class="w-24 h-24 object-cover rounded-lg" src="{{ asset('storage/' . $product->image2) }}" alt="" onclick="changeFeaturedImage(this)">
            </div>
            <div>
                <img class="w-24 h-24 object-cover rounded-lg" src="{{ asset('storage/' . $product->image3) }}" alt="" onclick="changeFeaturedImage(this)">
            </div>
        </div>
    </div>
    <div class="max-w-sm p-6 rounded-lg">
        <p class="mb-2 text-2xl font-bold tracking-tight text-gray-900 dark:text-white">{{ $product->name }}</p>
        <p class="my-5 text-lg font-semibold tracking-tight text-gray-900 dark:text-white">Rp{{ number_format($product->price, 0, ',', '.') }}</p>
        <p class="mb-1 text-md font-semibold tracking-tight text-gray-900 dark:text-white">Deskripsi Produk</p>
        <p class="mb-5 font-normal text-gray-700 dark:text-gray-400">{{ $product->description }}</p>
        <div class="flex ml-auto mb-5 max-w-[8rem]">
            <button type="button" id="decrement-button" data-input-counter-decrement="quantity-input" class="bg-gray-100 dark:bg-gray-700 dark:hover:bg-gray-600 dark:border-gray-600 hover:bg-gray-200 border border-gray-300 rounded-s-lg p-3 h-7 focus:ring-gray-100 dark:focus:ring-gray-700 focus:ring-2 focus:outline-none">
                <svg class="w-2 h-2 text-gray-900 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 8">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M1 1h16"/>
                </svg>
            </button>
            <input type="text" id="quantity-input" name="quantity" data-input-counter data-input-counter-min="1" data-input-counter-max="50" aria-describedby="helper-text-explanation" class="bg-gray-50 border-x-0 border-gray-300 h-7 text-center text-xs text-gray-900 text-sm focus:ring-blue-500 focus:border-blue-500 block w-full py-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder="999" value="5" required>
            <button type="button" id="increment-button" data-input-counter-increment="quantity-input" class="bg-gray-100 dark:bg-gray-700 dark:hover:bg-gray-600 dark:border-gray-600 hover:bg-gray-200 border border-gray-300 rounded-e-lg p-3 h-7 focus:ring-gray-100 dark:focus:ring-gray-700 focus:ring-2 focus:outline-none">
                <svg class="w-2 h-2 text-gray-900 dark:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 20">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 1v16M1 9h16"/>
                </svg>
            </button>
        </div>
        <div class="flex flex-col lg:flex-row justify-end gap-3">
            <a href="#" class="items-center px-3 py-2 text-sm font-medium text-center text-white bg-gray-700 rounded-lg hover:bg-gray-800 focus:ring-2 focus:outline-none focus:ring-gray-300 dark:bg-gray-600 dark:hover:bg-gray-700 dark:focus:ring-gray-800">
                Beli Langsung
            </a>
            {{-- <a href="#" class="items-center px-3 py-2 text-sm font-medium text-center text-white bg-gray-700 rounded-lg hover:bg-gray-800 focus:ring-2 focus:outline-none focus:ring-gray-300 dark:bg-gray-600 dark:hover:bg-gray-700 dark:focus:ring-gray-800">
                Tambahkan ke Troli
            </a> --}}
            
            <div class="flex flex-col lg:flex-row justify-end gap-3">
                <button type="submit" class="items-center px-3 py-2 text-sm font-medium text-center text-white bg-gray-700 rounded-lg hover:bg-gray-800 focus:ring-2 focus:outline-none focus:ring-gray-300 dark:bg-gray-600 dark:hover:bg-gray-700 dark:focus:ring-gray-800">
                    Tambahkan ke Troli
                </button>
            </div>
        </div>
    </div>

</div>


<script>
    function changeFeaturedImage(clickedImage) {
        var featuredImageContainer = document.getElementById('featured-image-container').getElementsByTagName('img')[0];
        featuredImageContainer.src = clickedImage.src;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
</body>
</html>