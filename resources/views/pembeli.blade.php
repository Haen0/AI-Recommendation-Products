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
<body class="font-sfpro bg-white">
    <div class="flex flex-col min-h-screen">

        <nav class="bg-gradient-to-b from-gray-100 to-gray-50 border-gray-200 dark:bg-gray-900">

            <div class="grid grid-cols-2 md:grid-cols-3 items-center p-4">
                <div class="mr-auto">
                </div>
                <div class="relative hidden md:block w-full">
                    <form method="GET" action="{{ route('pembeli.search') }}">
                        <div class="relative hidden md:block">
                            <div class="absolute inset-y-0 start-1 flex items-center ps-3 pointer-events-none">
                                <svg class="w-4 h-4 text-gray-500 dark:text-gray-400" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                                </svg>
                                <span class="sr-only">Search icon</span>
                            </div>
                            <input type="text" name="search" id="search-navbar" class="block w-full p-2 ps-10 text-sm text-gray-900 border border-gray-300 rounded-2xl bg-gray-300 focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" placeholder=" Lagi butuh apa nih?">
                        </div>
                    </form>
                </div>
                <div class="ml-auto flex">
                    <button type="button" data-collapse-toggle="navbar-search" aria-controls="navbar-search" aria-expanded="false" class="md:hidden ml-auto text-gray-900 dark:text-gray-400 hover:bg-gray-200 dark:hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-gray-300 dark:focus:ring-gray-700 rounded-lg text-sm p-2.5">
                        <svg class="w-5 h-5" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                            <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m19 19-4-4m0-7A7 7 0 1 1 1 8a7 7 0 0 1 14 0Z"/>
                        </svg>
                        <span class="sr-only">Search</span>
                    </button>
                </div>
        
            </div>
        
            
        </nav>

        <div class="flex-grow h-full p-4">
            <div class="w-full sm:w-3/5 mx-auto">
            
                <div class="py-5">
                    
                    <div class="flex mb-4">
                        <div>
                            <p class="text-xl font-medium">Rekomendasi</p>
                            <p class="text-sm text-gray-500">Mungkin yang anda suka</p>
                        </div>
                    </div>
                    
                    @include('tfidf')
            
                </div>
            </div>
        </div>
    </div>

    
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/flowbite/2.2.0/flowbite.min.js"></script>
</body>
</html>