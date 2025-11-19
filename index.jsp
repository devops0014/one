<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Premium E-Commerce Store - Shop the latest products at great prices">
    <meta name="keywords" content="e-commerce, shopping, online store, products">
    <title>ShopHub - Premium E-Commerce Store</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
            color: #333;
            background-color: #f5f5f5;
        }

        /* Header Styles */
        header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 0;
            position: sticky;
            top: 0;
            z-index: 1000;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        .top-bar {
            background-color: rgba(0,0,0,0.2);
            padding: 8px 0;
            font-size: 0.85rem;
        }

        .top-bar .container {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .top-bar a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        nav {
            padding: 15px 0;
        }

        .nav-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 1.8rem;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .logo span {
            color: #ffd700;
        }

        .search-bar {
            flex: 1;
            max-width: 500px;
            margin: 0 30px;
            position: relative;
        }

        .search-bar input {
            width: 100%;
            padding: 12px 50px 12px 20px;
            border: none;
            border-radius: 25px;
            font-size: 0.95rem;
            outline: none;
        }

        .search-bar button {
            position: absolute;
            right: 5px;
            top: 50%;
            transform: translateY(-50%);
            background: #667eea;
            border: none;
            padding: 8px 20px;
            border-radius: 20px;
            color: white;
            cursor: pointer;
            font-weight: 600;
        }

        .nav-links {
            display: flex;
            gap: 25px;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            display: flex;
            align-items: center;
            gap: 5px;
            transition: opacity 0.3s;
        }

        .nav-links a:hover {
            opacity: 0.8;
        }

        .cart-badge {
            background-color: #ff4757;
            color: white;
            border-radius: 50%;
            padding: 2px 7px;
            font-size: 0.75rem;
            font-weight: bold;
        }

        /* Main Menu */
        .main-menu {
            background-color: rgba(255,255,255,0.95);
            padding: 12px 0;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .main-menu ul {
            list-style: none;
            display: flex;
            justify-content: center;
            gap: 40px;
        }

        .main-menu a {
            color: #333;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }

        .main-menu a:hover {
            color: #667eea;
        }

        /* Hero Section */
        .hero {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 80px 0;
            text-align: center;
        }

        .hero h1 {
            font-size: 3rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
        }

        .hero p {
            font-size: 1.3rem;
            margin-bottom: 30px;
            opacity: 0.95;
        }

        .btn {
            display: inline-block;
            padding: 14px 35px;
            background-color: #ffd700;
            color: #333;
            text-decoration: none;
            border-radius: 30px;
            font-weight: 700;
            transition: all 0.3s;
            border: none;
            cursor: pointer;
            font-size: 1rem;
        }

        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }

        .btn-secondary {
            background-color: white;
            color: #667eea;
            margin-left: 15px;
        }

        /* Categories Section */
        .categories {
            padding: 60px 0;
            background-color: white;
        }

        .section-title {
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 50px;
            color: #333;
        }

        .section-title span {
            color: #667eea;
        }

        .category-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-top: 40px;
        }

        .category-card {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 50px 30px;
            border-radius: 15px;
            text-align: center;
            cursor: pointer;
            transition: all 0.3s;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .category-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        .category-icon {
            font-size: 3rem;
            margin-bottom: 20px;
        }

        .category-card h3 {
            font-size: 1.5rem;
            margin-bottom: 10px;
        }

        /* Products Section */
        .products {
            padding: 60px 0;
            background-color: #f9f9f9;
        }

        .product-filters {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-bottom: 40px;
            flex-wrap: wrap;
        }

        .filter-btn {
            padding: 10px 25px;
            background-color: white;
            border: 2px solid #667eea;
            color: #667eea;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s;
        }

        .filter-btn:hover,
        .filter-btn.active {
            background-color: #667eea;
            color: white;
        }

        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 30px;
        }

        .product-card {
            background: white;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: all 0.3s;
            cursor: pointer;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.15);
        }

        .product-image {
            width: 100%;
            height: 250px;
            background: linear-gradient(135deg, #e0e0e0 0%, #f5f5f5 100%);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 4rem;
            position: relative;
        }

        .product-badge {
            position: absolute;
            top: 15px;
            right: 15px;
            background-color: #ff4757;
            color: white;
            padding: 5px 15px;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 600;
        }

        .product-badge.new {
            background-color: #26de81;
        }

        .product-info {
            padding: 20px;
        }

        .product-category {
            color: #667eea;
            font-size: 0.85rem;
            font-weight: 600;
            text-transform: uppercase;
            margin-bottom: 8px;
        }

        .product-title {
            font-size: 1.2rem;
            margin-bottom: 10px;
            color: #333;
        }

        .product-description {
            color: #666;
            font-size: 0.9rem;
            margin-bottom: 15px;
            line-height: 1.5;
        }

        .product-rating {
            display: flex;
            gap: 3px;
            margin-bottom: 15px;
        }

        .star {
            color: #ffd700;
        }

        .product-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .product-price {
            font-size: 1.5rem;
            font-weight: 700;
            color: #667eea;
        }

        .old-price {
            text-decoration: line-through;
            color: #999;
            font-size: 1rem;
            margin-left: 10px;
        }

        .add-to-cart-btn {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s;
        }

        .add-to-cart-btn:hover {
            transform: scale(1.05);
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.4);
        }

        /* Features Section */
        .features {
            padding: 60px 0;
            background-color: white;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-top: 40px;
        }

        .feature-item {
            text-align: center;
            padding: 30px;
        }

        .feature-icon {
            font-size: 3.5rem;
            margin-bottom: 20px;
            color: #667eea;
        }

        .feature-item h3 {
            font-size: 1.3rem;
            margin-bottom: 15px;
            color: #333;
        }

        .feature-item p {
            color: #666;
            line-height: 1.6;
        }

        /* Newsletter Section */
        .newsletter {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 60px 0;
            text-align: center;
        }

        .newsletter h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }

        .newsletter p {
            font-size: 1.1rem;
            margin-bottom: 30px;
            opacity: 0.95;
        }

        .newsletter-form {
            max-width: 600px;
            margin: 0 auto;
            display: flex;
            gap: 15px;
        }

        .newsletter-form input {
            flex: 1;
            padding: 15px 25px;
            border: none;
            border-radius: 30px;
            font-size: 1rem;
            outline: none;
        }

        .newsletter-form button {
            padding: 15px 40px;
            background-color: #ffd700;
            color: #333;
            border: none;
            border-radius: 30px;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.3s;
        }

        .newsletter-form button:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.3);
        }

        /* Footer */
        footer {
            background-color: #2c3e50;
            color: white;
            padding: 50px 0 20px;
        }

        .footer-content {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-section h3 {
            font-size: 1.3rem;
            margin-bottom: 20px;
            color: #ffd700;
        }

        .footer-section ul {
            list-style: none;
        }

        .footer-section ul li {
            margin-bottom: 10px;
        }

        .footer-section a {
            color: #bbb;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-section a:hover {
            color: white;
        }

        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .social-links a {
            display: inline-block;
            width: 40px;
            height: 40px;
            background-color: #667eea;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
            transition: all 0.3s;
        }

        .social-links a:hover {
            background-color: #ffd700;
            transform: translateY(-3px);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 30px;
            border-top: 1px solid #444;
            color: #999;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2rem;
            }

            .hero p {
                font-size: 1rem;
            }

            .nav-content {
                flex-direction: column;
                gap: 15px;
            }

            .search-bar {
                max-width: 100%;
                margin: 15px 0;
            }

            .main-menu ul {
                flex-wrap: wrap;
                gap: 20px;
            }

            .btn-secondary {
                margin-left: 0;
                margin-top: 10px;
            }

            .newsletter-form {
                flex-direction: column;
            }

            .product-grid {
                grid-template-columns: repeat(auto-fill, minmax(200px, 1fr));
            }
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .product-card {
            animation: fadeIn 0.5s ease-in-out;
        }
    </style>
</head>
<body>
    <%
        // JSP Server-side code
        Date currentDate = new Date();
        SimpleDateFormat dateFormat = new SimpleDateFormat("EEEE, MMMM dd, yyyy");
        String formattedDate = dateFormat.format(currentDate);
        
        // Session handling
        Integer cartItems = (Integer) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = 0;
        }
        
        String userName = (String) session.getAttribute("userName");
        if (userName == null) {
            userName = "Guest";
        }
    %>

    <!-- Header -->
    <header>
        <div class="top-bar">
            <div class="container">
                <div>
                    <span>📅 <%= formattedDate %></span>
                    <span style="margin-left: 20px;">🎉 Free Shipping on Orders Over $50!</span>
                </div>
                <div>
                    <a href="#track">Track Order</a>
                    <a href="#support">Support</a>
                    <a href="#contact">Contact</a>
                </div>
            </div>
        </div>
        
        <nav>
            <div class="container">
                <div class="nav-content">
                    <div class="logo">
                        Shop<span>Hub</span>
                    </div>
                    
                    <div class="search-bar">
                        <input type="text" placeholder="Search for products...">
                        <button>Search</button>
                    </div>
                    
                    <div class="nav-links">
                        <a href="#account">👤 <%= userName %></a>
                        <a href="#wishlist">❤️ Wishlist</a>
                        <a href="#cart">
                            🛒 Cart 
                            <span class="cart-badge"><%= cartItems %></span>
                        </a>
                    </div>
                </div>
            </div>
        </nav>
        
        <div class="main-menu">
            <div class="container">
                <ul>
                    <li><a href="#home">Home</a></li>
                    <li><a href="#electronics">Electronics</a></li>
                    <li><a href="#fashion">Fashion</a></li>
                    <li><a href="#home-garden">Home & Garden</a></li>
                    <li><a href="#sports">Sports</a></li>
                    <li><a href="#deals">Hot Deals</a></li>
                </ul>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h1>Welcome to ShopHub</h1>
            <p>Discover Amazing Products at Unbeatable Prices</p>
            <a href="#products" class="btn">Shop Now</a>
            <a href="#categories" class="btn btn-secondary">Browse Categories</a>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="categories" id="categories">
        <div class="container">
            <h2 class="section-title">Shop by <span>Category</span></h2>
            
            <div class="category-grid">
                <div class="category-card">
                    <div class="category-icon">💻</div>
                    <h3>Electronics</h3>
                    <p>Latest gadgets and tech</p>
                </div>
                
                <div class="category-card">
                    <div class="category-icon">👔</div>
                    <h3>Fashion</h3>
                    <p>Trendy clothing & accessories</p>
                </div>
                
                <div class="category-card">
                    <div class="category-icon">🏠</div>
                    <h3>Home & Living</h3>
                    <p>Decor and essentials</p>
                </div>
                
                <div class="category-card">
                    <div class="category-icon">⚽</div>
                    <h3>Sports</h3>
                    <p>Fitness & outdoor gear</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Products Section -->
    <section class="products" id="products">
        <div class="container">
            <h2 class="section-title">Featured <span>Products</span></h2>
            
            <div class="product-filters">
                <button class="filter-btn active">All</button>
                <button class="filter-btn">Best Sellers</button>
                <button class="filter-btn">New Arrivals</button>
                <button class="filter-btn">On Sale</button>
            </div>
            
            <div class="product-grid">
                <%
                    // Sample product data - in real application, this would come from database
                    String[][] products = {
                        {"💻", "Wireless Headphones", "Electronics", "Premium noise-cancelling headphones with 30-hour battery life", "89.99", "129.99", "SALE"},
                        {"📱", "Smart Watch Pro", "Electronics", "Advanced fitness tracking and notifications on your wrist", "199.99", "", "NEW"},
                        {"👕", "Designer T-Shirt", "Fashion", "Premium cotton blend with modern design", "29.99", "49.99", "SALE"},
                        {"👟", "Running Shoes", "Sports", "Lightweight and comfortable for long-distance running", "79.99", "", ""},
                        {"🎧", "Bluetooth Speaker", "Electronics", "Portable speaker with crystal clear sound", "49.99", "69.99", "SALE"},
                        {"👜", "Leather Handbag", "Fashion", "Genuine leather with multiple compartments", "149.99", "", "NEW"},
                        {"📷", "Digital Camera", "Electronics", "Professional 24MP camera with 4K video", "599.99", "799.99", "SALE"},
                        {"⌚", "Classic Watch", "Fashion", "Elegant timepiece for any occasion", "119.99", "", ""}
                    };
                    
                    for (String[] product : products) {
                %>
                <div class="product-card">
                    <div class="product-image">
                        <%= product[0] %>
                        <% if (!product[6].isEmpty()) { %>
                            <span class="product-badge <%= product[6].equals("NEW") ? "new" : "" %>">
                                <%= product[6] %>
                            </span>
                        <% } %>
                    </div>
                    <div class="product-info">
                        <div class="product-category"><%= product[2] %></div>
                        <h3 class="product-title"><%= product[1] %></h3>
                        <p class="product-description"><%= product[3] %></p>
                        <div class="product-rating">
                            <span class="star">⭐</span>
                            <span class="star">⭐</span>
                            <span class="star">⭐</span>
                            <span class="star">⭐</span>
                            <span class="star">⭐</span>
                        </div>
                        <div class="product-footer">
                            <div>
                                <span class="product-price">$<%= product[4] %></span>
                                <% if (!product[5].isEmpty()) { %>
                                    <span class="old-price">$<%= product[5] %></span>
                                <% } %>
                            </div>
                            <button class="add-to-cart-btn" onclick="addToCart('<%= product[1] %>')">
                                Add to Cart
                            </button>
                        </div>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </section>

    <!-- Features Section -->
    <section class="features">
        <div class="container">
            <h2 class="section-title">Why Shop <span>With Us</span></h2>
            
            <div class="features-grid">
                <div class="feature-item">
                    <div class="feature-icon">🚚</div>
                    <h3>Free Shipping</h3>
                    <p>Free delivery on all orders over $50. Fast and reliable shipping worldwide.</p>
                </div>
                
                <div class="feature-item">
                    <div class="feature-icon">🔒</div>
                    <h3>Secure Payment</h3>
                    <p>100% secure payment processing. Your data is safe with us.</p>
                </div>
                
                <div class="feature-item">
                    <div class="feature-icon">↩️</div>
                    <h3>Easy Returns</h3>
                    <p>30-day return policy. No questions asked, hassle-free returns.</p>
                </div>
                
                <div class="feature-item">
                    <div class="feature-icon">💬</div>
                    <h3>24/7 Support</h3>
                    <p>Round-the-clock customer support. We're here to help anytime.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter">
        <div class="container">
            <h2>Subscribe to Our Newsletter</h2>
            <p>Get the latest updates on new products and upcoming sales</p>
            
            <form class="newsletter-form" onsubmit="return subscribeNewsletter(event)">
                <input type="email" placeholder="Enter your email address" required>
                <button type="submit">Subscribe</button>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>About ShopHub</h3>
                    <p>Your trusted online shopping destination for quality products at great prices. We're committed to providing the best shopping experience.</p>
                    <div class="social-links">
                        <a href="#facebook">📘</a>
                        <a href="#twitter">🐦</a>
                        <a href="#instagram">📷</a>
                        <a href="#linkedin">💼</a>
                    </div>
                </div>
                
                <div class="footer-section">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="#about">About Us</a></li>
                        <li><a href="#contact">Contact Us</a></li>
                        <li><a href="#careers">Careers</a></li>
                        <li><a href="#press">Press</a></li>
                        <li><a href="#blog">Blog</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3>Customer Service</h3>
                    <ul>
                        <li><a href="#help">Help Center</a></li>
                        <li><a href="#track">Track Order</a></li>
                        <li><a href="#returns">Returns</a></li>
                        <li><a href="#shipping">Shipping Info</a></li>
                        <li><a href="#faq">FAQ</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3>Contact Info</h3>
                    <ul>
                        <li>📧 support@shophub.com</li>
                        <li>📞 1-800-SHOP-HUB</li>
                        <li>📍 123 Commerce Street</li>
                        <li>   New York, NY 10001</li>
                        <li>   United States</li>
                    </ul>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; <%= java.time.Year.now().getValue() %> ShopHub E-Commerce. All rights reserved. | 
                   <a href="#privacy">Privacy Policy</a> | 
                   <a href="#terms">Terms of Service</a>
                </p>
            </div>
        </div>
    </footer>

    <script>
        // Add to Cart functionality
        function addToCart(productName) {
            alert('Added "' + productName + '" to cart!');
            // In a real application, this would update the cart via AJAX
            let cartBadge = document.querySelector('.cart-badge');
            let currentCount = parseInt(cartBadge.textContent);
            cartBadge.textContent = currentCount + 1;
        }

        // Newsletter subscription
        function subscribeNewsletter(event) {
            event.preventDefault();
            let email = event.target.querySelector('input[type="email"]').value;
            alert('Thank you for subscribing with: ' + email);
            event.target.reset();
            return false;
        }

        // Filter buttons
        document.querySelectorAll('.filter-btn').forEach(button => {
            button.addEventListener('click', function() {
                document.querySelectorAll('.filter-btn').forEach(btn => btn.classList.remove('active'));
                this.classList.add('active');
                // In a real application, this would filter products
            });
        });

        // Smooth scrolling for anchor links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });
    </script>
</body>
</html>
