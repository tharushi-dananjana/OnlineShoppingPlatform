<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://unpkg.com/@tailwindcss/browser@4"></script>
    <script src="https://kit.fontawesome.com/470c617e79.js" crossorigin="anonymous"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
</head>
<body>

    <header class="bg-blue-600 shadow-md">
        <div class="container mx-auto px-4 py-3 flex justify-between items-center">
            <!-- Logo -->
            <a href="#" class="text-white text-2xl font-bold flex items-center">
                <span>E-Shopper</span>
            </a>

            <!-- Search Bar -->
            <div class="hidden md:flex items-center bg-white px-3 py-2 rounded-lg shadow">
                <input type="text" placeholder="Search..." class="outline-none px-2 text-gray-700">
                <button class="text-blue-600">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <!-- Navigation Links -->
            <nav class="hidden md:flex space-x-6">
                <a href="#" class="text-white hover:text-gray-200">Home</a>
                <a href="#" class="text-white hover:text-gray-200">About</a>
                <a href="#" class="text-white hover:text-gray-200">Services</a>
                <a href="#" class="text-white hover:text-gray-200">Contact</a>
            </nav>

            <!-- Login Button -->
            <div class="hidden md:block">
                <a href="#" class="bg-white text-blue-600 px-4 py-2 rounded-lg shadow hover:bg-gray-200">Login</a>
            </div>

            <!-- Mobile Menu Button -->
            <button id="menu-btn" class="md:hidden text-white text-2xl">
                <i class="fas fa-bars"></i>
            </button>
        </div>

        <!-- Mobile Menu -->
        <div id="mobile-menu" class="hidden md:hidden bg-blue-700 py-3">
            <a href="#" class="block text-white text-center py-2 hover:bg-blue-800">Home</a>
            <a href="#" class="block text-white text-center py-2 hover:bg-blue-800">About</a>
            <a href="#" class="block text-white text-center py-2 hover:bg-blue-800">Services</a>
            <a href="#" class="block text-white text-center py-2 hover:bg-blue-800">Contact</a>
            <a href="#" class="block text-white text-center py-2 mt-2 bg-white text-blue-600 mx-10 py-2 rounded-lg shadow hover:bg-gray-200">Login</a>
        </div>
    </header>

    <script>
        // Toggle Mobile Menu
        document.getElementById('menu-btn').addEventListener('click', function() {
            document.getElementById('mobile-menu').classList.toggle('hidden');
        });
    </script>

        <!-- Hero Section -->
        <section class="bg-gray-900 text-white">
            <div class="container mx-auto px-6 py-20 flex flex-col-reverse lg:flex-row items-center">
                
                <!-- Hero Text -->
                <div class="lg:w-1/2 text-center lg:text-left">
                    <h1 class="text-4xl font-bold mb-4">Upgrade Your Shopping Experience</h1>
                    <p class="mb-6 text-lg text-gray-300">Find the best deals on top-quality products. Shop now and save big with E-Shopper!</p>
                    <a href="#products" class="bg-blue-600 px-8 py-3 text-white rounded-lg text-lg hover:bg-blue-700 transition duration-200">
                        Shop Now
                    </a>
                </div>
    
                <!-- Hero Image -->
                <div class="lg:w-1/2">
                    <img src="./pic12.jpg" alt="Shopping Hero Image" class="w-full h-auto">
                </div>
            </div>
        </section>

    

    <!-- Products Section -->
<section class="container mx-auto px-4 py-8">
    <h2 class="text-3xl font-bold text-center text-gray-800 mb-6">Featured Products</h2>
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">

        <!-- Product 1 -->
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <img src="./pic1.jpg" alt="Wireless Headphones" class="w-full h-48 object-cover">
            <div class="p-4">
                <h3 class="text-lg font-semibold text-gray-800">Wireless Headphones</h3>
                <p class="text-gray-600">$59.99</p>
                <button class="mt-4 w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Add to Cart</button>
            </div>
        </div>

        <!-- Product 2 -->
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <img src="./pic2.jpg" alt="Smart Watch" class="w-full h-48 object-cover">
            <div class="p-4">
                <h3 class="text-lg font-semibold text-gray-800">Smart Watch</h3>
                <p class="text-gray-600">$129.99</p>
                <button class="mt-4 w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Add to Cart</button>
            </div>
        </div>

        <!-- Product 3 -->
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <img src="./pic3.jpg" alt="Bluetooth Speaker" class="w-full h-48 object-cover">
            <div class="p-4">
                <h3 class="text-lg font-semibold text-gray-800">Bluetooth Speaker</h3>
                <p class="text-gray-600">$89.99</p>
                <button class="mt-4 w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Add to Cart</button>
            </div>
        </div>

        <!-- Product 4 -->
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <img src="./pic4.jpg" alt="Gaming Mouse" class="w-full h-48 object-cover">
            <div class="p-4">
                <h3 class="text-lg font-semibold text-gray-800">Gaming Mouse</h3>
                <p class="text-gray-600">$49.99</p>
                <button class="mt-4 w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Add to Cart</button>
            </div>
        </div>

        <!-- Product 5 -->
        <div class="bg-white shadow-md rounded-lg overflow-hidden">
            <img src="./pic5.jpg" alt="Laptop Backpack" class="w-full h-48 object-cover">
            <div class="p-4">
                <h3 class="text-lg font-semibold text-gray-800">Laptop Backpack</h3>
                <p class="text-gray-600">$39.99</p>
                <button class="mt-4 w-full bg-blue-600 text-white py-2 rounded hover:bg-blue-700">Add to Cart</button>
            </div>
        </div>

       

        
    </div>
</section>

</body>
</html>
 