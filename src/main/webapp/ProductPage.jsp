<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ include file="./partials/header.jsp"%>

    <!-- Featured Products Section -->
    <section class="container mx-auto px-6 py-10">
        <h2 class="text-3xl font-bold text-gray-800 mb-6">All Products</h2>

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