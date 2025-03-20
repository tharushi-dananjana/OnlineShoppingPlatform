<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="./partials/header.jsp"%>

    <!-- Hero Section (Image Slider with Auto Change) -->
    <section x-data="{ activeSlide: 1, slides: 3, interval: null }"
    x-init="interval = setInterval(() => { activeSlide = activeSlide === slides ? 1 : activeSlide + 1 }, 5000)"
    class="relative w-full h-[500px] overflow-hidden">

    <!-- Slides -->
    <template x-for="slide in slides" :key="slide">
        <div class="absolute inset-0 transition-opacity duration-1000"
            x-show="activeSlide === slide"
            x-transition:enter="opacity-0"
            x-transition:enter-start="opacity-0"
            x-transition:enter-end="opacity-100">
            <img :src="[
                './assets/banner-1.jpg',
                './assets/banner-2.jpg',
                './assets/banner-3.jpg'
            ][slide - 1]" alt="Slide" class="w-full h-full object-cover">
            <div class="absolute top-0 left-0 w-full h-full bg-black bg-opacity-40 flex items-center">
                <div class="container mx-auto px-6 text-white">
                    <h2 class="text-4xl font-bold" x-text="[
                        'Discover the Best Deals',
                        'Latest Fashions Designs',
                        'Buy Some Home Essentials'
                    ][slide - 1]"></h2>
                    <p class="mt-2 text-lg" x-text="[
                        'Shop now and enjoy exclusive discounts on top brands.',
                        'Get the newest cloths at unbeatable prices.',
                        'Discover premium home essentials and furniture.'
                    ][slide - 1]"></p>
                    <a href="#" class="mt-4 inline-block bg-blue-500 text-white px-6 py-2 rounded-lg hover:bg-blue-600 transition">Shop Now</a>
                </div>
            </div>
        </div>
    </template>

    <!-- Navigation Arrows -->
    <button @click="activeSlide = activeSlide === 1 ? slides : activeSlide - 1"
        class="absolute left-5 top-1/2 transform -translate-y-1/2 text-white text-2xl bg-black bg-opacity-50 px-3 py-2 rounded-full hover:bg-opacity-75 transition">
        <i class="fas fa-chevron-left"></i>
    </button>

    <button @click="activeSlide = activeSlide === slides ? 1 : activeSlide + 1"
        class="absolute right-5 top-1/2 transform -translate-y-1/2 text-white text-2xl bg-black bg-opacity-50 px-3 py-2 rounded-full hover:bg-opacity-75 transition">
        <i class="fas fa-chevron-right"></i>
    </button>

    <!-- Dots Navigation -->
    <div class="absolute bottom-5 left-1/2 transform -translate-x-1/2 flex space-x-3">
        <template x-for="n in slides" :key="n">
            <button @click="activeSlide = n"
                class="w-3 h-3 rounded-full transition-all duration-300"
                :class="activeSlide === n ? 'bg-blue-500 scale-125' : 'bg-gray-300'"></button>
        </template>
    </div>

    </section>

    <!-- Featured Products Section -->
    <section class="container mx-auto px-6 py-10">
        <h2 class="text-3xl font-bold text-gray-800 mb-6">Featured Products</h2>

        <div class="grid grid-cols-2 md:grid-cols-4 gap-6">
            
            <c:forEach var="product" items="${products}">
	            <div class="bg-white shadow-lg rounded-lg overflow-hidden hover:scale-105 transition">
	                <img src="assets/products/${product.fileName}" alt="Product 1" class="w-full h-52 object-cover">
	                <div class="p-4">	
	                    <h3 class="text-lg font-semibold text-gray-800">${product.title}</h3>
	                    <p class="text-blue-500 font-bold mt-1">$${product.price}</p>
	                    <button class="mt-3 bg-blue-500 text-white px-4 py-2 rounded-lg w-full hover:bg-blue-600 transition">
	                        Add to Cart
	                    </button>
	                </div>
	            </div>
			</c:forEach>
        </div>
    </section>

<%@ include file="./partials/footer.jsp"%>  