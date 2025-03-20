<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>E-Shopper</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://kit.fontawesome.com/46b998f154.js" crossorigin="anonymous"></script>
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
</head>
<body class="bg-gray-100">
    <!-- Header Navigation Bar -->
    <header class="bg-white shadow-md">
        <div class="container mx-auto px-6 py-4 flex items-center justify-between">
            
            <!-- Logo -->
            <a href="/" class="text-2xl font-bold text-gray-800 flex items-center">
                <i class="fas fa-shopping-bag text-blue-500 mr-2"></i> E-Shopper
            </a>

            <!-- Search Bar -->
            <div class="hidden md:flex items-center border rounded-lg overflow-hidden w-1/3">
                <input type="text" class="w-full px-4 py-2 outline-none" placeholder="Search products...">
                <button class="bg-blue-500 px-4 py-2 text-white">
                    <i class="fas fa-search"></i>
                </button>
            </div>

            <!-- Navigation Links -->
            <nav class="hidden md:flex space-x-6 text-gray-700">
                <a href="#" class="hover:text-blue-500">Home</a>
                <a href="#" class="hover:text-blue-500">Product</a>
                <a href="#" class="hover:text-blue-500">Deals</a>
                <a href="#" class="hover:text-blue-500">Contact</a>
            </nav>

            <!-- User & Cart Icons -->
            <div class="flex items-center space-x-4">
                <a href="#" class="text-gray-700 hover:text-blue-500">
                    <i class="far fa-user text-xl"></i>
                </a>
                <a href="#" class="relative text-gray-700 hover:text-blue-500">
                    <i class="fas fa-shopping-cart text-xl"></i>
                    <span class="absolute -top-2 -right-2 bg-red-500 text-white text-xs px-2 py-0.5 rounded-full">2</span>
                </a>
                <button class="md:hidden text-gray-700 text-2xl">
                    <i class="fas fa-bars"></i>
                </button>
            </div>

        </div>
    </header>