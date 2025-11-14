<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>NexusShop - Modern E-Commerce</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600&family=Poppins:wght@600;700&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #0a2540;
            --accent: #00d4ff;
            --light: #f6f9fc;
            --dark: #1a1a1a;
            --gray: #7a7a7a;
            --success: #28a745;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            color: var(--dark);
            background-color: white;
            line-height: 1.6;
        }

        h1, h2, h3, h4 {
            font-family: 'Poppins', sans-serif;
            font-weight: 600;
        }

        .container {
            width: 100%;
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header Styles */
        header {
            background-color: white;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 100;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 0;
        }

        .logo {
            font-size: 28px;
            font-weight: 700;
            color: var(--primary);
            text-decoration: none;
            font-family: 'Poppins', sans-serif;
        }

        .logo span {
            color: var(--accent);
        }

        nav ul {
            display: flex;
            list-style: none;
        }

        nav ul li {
            margin: 0 15px;
            position: relative;
        }

        nav ul li a {
            text-decoration: none;
            color: var(--dark);
            font-weight: 500;
            transition: color 0.3s;
            display: flex;
            align-items: center;
        }

        nav ul li a:hover {
            color: var(--accent);
        }

        nav ul li a i {
            margin-right: 5px;
        }

        .dropdown {
            position: relative;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 200px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
            z-index: 1;
            border-radius: 8px;
            padding: 10px 0;
            top: 100%;
            left: 0;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }

        .dropdown-content a {
            padding: 10px 20px;
            display: block;
            color: var(--dark);
        }

        .dropdown-content a:hover {
            background-color: var(--light);
        }

        .search-bar {
            display: flex;
            align-items: center;
            background-color: var(--light);
            border-radius: 30px;
            padding: 8px 15px;
            width: 250px;
        }

        .search-bar input {
            border: none;
            background: transparent;
            width: 100%;
            padding: 5px;
            outline: none;
        }

        .search-bar button {
            background: transparent;
            border: none;
            color: var(--gray);
            cursor: pointer;
        }

        .header-icons {
            display: flex;
            align-items: center;
        }

        .header-icons a {
            margin-left: 20px;
            color: var(--dark);
            position: relative;
            text-decoration: none;
        }

        .header-icons a:hover {
            color: var(--accent);
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -8px;
            background-color: var(--accent);
            color: white;
            border-radius: 50%;
            width: 18px;
            height: 18px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 10px;
            font-weight: bold;
        }

        .mobile-menu-btn {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            cursor: pointer;
        }

        /* Hero Section */
        .hero {
            height: 500px;
            background: linear-gradient(rgba(10, 37, 64, 0.7), rgba(10, 37, 64, 0.7)), 
                        url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1600&q=80');
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            color: white;
            text-align: center;
        }

        .hero-content {
            max-width: 800px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .hero h1 {
            font-size: 48px;
            margin-bottom: 20px;
        }

        .hero p {
            font-size: 18px;
            margin-bottom: 30px;
        }

        .btn {
            display: inline-block;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s;
            margin: 0 10px;
        }

        .btn-primary {
            background-color: var(--accent);
            color: white;
        }

        .btn-primary:hover {
            background-color: #00b8e0;
            transform: translateY(-2px);
        }

        .btn-secondary {
            background-color: transparent;
            color: white;
            border: 2px solid white;
        }

        .btn-secondary:hover {
            background-color: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }

        /* Categories Section */
        .section-title {
            text-align: center;
            margin: 60px 0 30px;
        }

        .section-title h2 {
            font-size: 36px;
            color: var(--primary);
            margin-bottom: 15px;
        }

        .section-title p {
            color: var(--gray);
            max-width: 700px;
            margin: 0 auto;
        }

        .categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 20px;
            margin-bottom: 60px;
        }

        .category-card {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: all 0.3s;
            text-align: center;
            padding: 20px 10px;
        }

        .category-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
        }

        .category-icon {
            font-size: 40px;
            margin-bottom: 15px;
            color: var(--accent);
        }

        .category-card h3 {
            margin-bottom: 10px;
            font-size: 18px;
        }

        .category-card p {
            color: var(--gray);
            font-size: 14px;
        }

        /* Products Section */
        .products {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
            margin-bottom: 60px;
        }

        .product-card {
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: all 0.3s;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
        }

        .product-badge {
            position: absolute;
            top: 10px;
            left: 10px;
            background-color: var(--success);
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 12px;
            font-weight: 600;
        }

        .product-img {
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .product-info {
            padding: 15px;
        }

        .product-info h3 {
            font-size: 16px;
            margin-bottom: 5px;
        }

        .product-info .price {
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 10px;
        }

        .product-info .old-price {
            text-decoration: line-through;
            color: var(--gray);
            font-size: 14px;
            margin-left: 5px;
        }

        .product-info .rating {
            color: #ffc107;
            margin-bottom: 15px;
            font-size: 14px;
        }

        .add-to-cart {
            width: 100%;
            padding: 8px 0;
            background-color: var(--primary);
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
            font-weight: 600;
        }

        .add-to-cart:hover {
            background-color: var(--accent);
        }

        /* Deals Section */
        .deals {
            background-color: var(--light);
            padding: 60px 0;
            margin-bottom: 60px;
        }

        .deal-container {
            display: flex;
            align-items: center;
            background-color: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
        }

        .deal-img {
            width: 50%;
            height: 400px;
            object-fit: cover;
        }

        .deal-content {
            width: 50%;
            padding: 40px;
        }

        .deal-timer {
            display: flex;
            margin: 20px 0 30px;
        }

        .timer-box {
            text-align: center;
            margin-right: 15px;
            background-color: var(--primary);
            color: white;
            padding: 10px;
            border-radius: 5px;
            min-width: 60px;
        }

        .timer-box span:first-child {
            font-size: 24px;
            font-weight: 700;
            display: block;
        }

        .timer-box span:last-child {
            font-size: 12px;
            opacity: 0.8;
        }

        .deal-price {
            font-size: 28px;
            font-weight: 700;
            color: var(--primary);
            margin-bottom: 20px;
        }

        .deal-old-price {
            text-decoration: line-through;
            color: var(--gray);
            font-size: 18px;
            margin-left: 10px;
        }

        .deal-discount {
            background-color: #ff4757;
            color: white;
            padding: 5px 10px;
            border-radius: 4px;
            font-size: 14px;
            font-weight: 600;
            margin-left: 10px;
        }

        /* Testimonials Section */
        .testimonials {
            margin-bottom: 60px;
        }

        .testimonial-slider {
            display: flex;
            overflow-x: auto;
            scroll-snap-type: x mandatory;
            gap: 30px;
            padding: 20px 0;
            scrollbar-width: none; /* Firefox */
        }

        .testimonial-slider::-webkit-scrollbar {
            display: none; /* Chrome, Safari, Opera */
        }

        .testimonial-card {
            min-width: 350px;
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            scroll-snap-align: start;
        }

        .testimonial-card .rating {
            color: #ffc107;
            margin-bottom: 15px;
        }

        .testimonial-card p {
            font-style: italic;
            margin-bottom: 20px;
        }

        .user-info {
            display: flex;
            align-items: center;
        }

        .user-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
            margin-right: 15px;
        }

        .user-name {
            font-weight: 600;
        }

        .user-title {
            color: var(--gray);
            font-size: 14px;
        }

        /* Newsletter Section */
        .newsletter {
            background-color: var(--primary);
            color: white;
            padding: 60px 0;
            text-align: center;
            margin-bottom: 60px;
        }

        .newsletter h2 {
            margin-bottom: 20px;
        }

        .newsletter p {
            max-width: 600px;
            margin: 0 auto 30px;
            opacity: 0.8;
        }

        .newsletter-form {
            display: flex;
            max-width: 500px;
            margin: 0 auto;
        }

        .newsletter-form input {
            flex: 1;
            padding: 15px;
            border: none;
            border-radius: 30px 0 0 30px;
            outline: none;
        }

        .newsletter-form button {
            padding: 0 30px;
            background-color: var(--accent);
            color: white;
            border: none;
            border-radius: 0 30px 30px 0;
            font-weight: 600;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .newsletter-form button:hover {
            background-color: #00b8e0;
        }

        /* Footer */
        footer {
            background-color: var(--dark);
            color: white;
            padding: 60px 0 20px;
        }

        .footer-container {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 40px;
            margin-bottom: 40px;
        }

        .footer-col h3 {
            font-size: 18px;
            margin-bottom: 20px;
            position: relative;
            padding-bottom: 10px;
        }

        .footer-col h3::after {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            width: 50px;
            height: 2px;
            background-color: var(--accent);
        }

        .footer-col ul {
            list-style: none;
        }

        .footer-col ul li {
            margin-bottom: 10px;
        }

        .footer-col ul li a {
            color: #b3b3b3;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-col ul li a:hover {
            color: var(--accent);
        }

        .social-links {
            display: flex;
            gap: 15px;
            margin-top: 20px;
        }

        .social-links a {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background-color: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            color: white;
            transition: all 0.3s;
        }

        .social-links a:hover {
            background-color: var(--accent);
            transform: translateY(-3px);
        }

        .payment-methods {
            display: flex;
            gap: 10px;
            margin-top: 20px;
        }

        .payment-methods img {
            height: 25px;
            filter: brightness(0) invert(1);
            opacity: 0.7;
        }

        .footer-bottom {
            text-align: center;
            padding-top: 20px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #b3b3b3;
            font-size: 14px;
        }

        /* Responsive Styles */
        @media (max-width: 1200px) {
            .categories {
                grid-template-columns: repeat(3, 1fr);
            }
            
            .products {
                grid-template-columns: repeat(3, 1fr);
            }
            
            .deal-container {
                flex-direction: column;
            }
            
            .deal-img, .deal-content {
                width: 100%;
            }
            
            .deal-img {
                height: 300px;
            }
        }

        @media (max-width: 992px) {
            .footer-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media (max-width: 768px) {
            .header-container {
                flex-wrap: wrap;
            }
            
            .search-bar {
                order: 3;
                width: 100%;
                margin-top: 15px;
            }
            
            .categories {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .products {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .hero h1 {
                font-size: 36px;
            }
            
            .mobile-menu-btn {
                display: block;
            }
            
            nav {
                display: none;
                width: 100%;
                order: 4;
                margin-top: 15px;
            }
            
            nav.active {
                display: block;
            }
            
            nav ul {
                flex-direction: column;
            }
            
            nav ul li {
                margin: 10px 0;
            }
            
            .dropdown-content {
                position: static;
                box-shadow: none;
                display: none;
                padding-left: 20px;
            }
            
            .dropdown:hover .dropdown-content {
                display: none;
            }
            
            .dropdown.active .dropdown-content {
                display: block;
            }
        }

        @media (max-width: 576px) {
            .categories, .products {
                grid-template-columns: 1fr;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
            
            .newsletter-form input, .newsletter-form button {
                border-radius: 30px;
            }
            
            .newsletter-form button {
                margin-top: 10px;
                padding: 15px;
            }
            
            .footer-container {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>
    <!-- Header -->
    <header>
        <div class="container header-container">
            <a href="#" class="logo">Nexus<span>Shop</span></a>
            
            <nav id="mainNav">
                <ul>
                    <li><a href="#"><em class="fas fa-home"></em> Home</a></li>
                    <li class="dropdown">
                        <a href="#"><i class="fas fa-th-large"></i> Categories <i class="fas fa-chevron-down"></i></a>
                        <div class="dropdown-content">
                            <a href="#"><i class="fas fa-mobile-alt"></i> Smartphones</a>
                            <a href="#"><i class="fas fa-laptop"></i> Laptops</a>
                            <a href="#"><i class="fas fa-tshirt"></i> Clothing</a>
                            <a href="#"><i class="fas fa-headphones"></i> Gadgets</a>
                            <a href="#"><i class="fas fa-shoe-prints"></i> Footwear</a>
                            <a href="#"><i class="fas fa-watch"></i> Accessories</a>
                        </div>
                    </li>
                    <li><a href="#"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#"><i class="fas fa-percent"></i> Deals</a></li>
                    <li><a href="#"><i class="fas fa-info-circle"></i> About</a></li>
                    <li><a href="#"><i class="fas fa-envelope"></i> Contact</a></li>
                </ul>
            </nav>
            
            <div class="search-bar">
                <input type="text" placeholder="Search products...">
                <button type="submit"><i class="fas fa-search"></i></button>
            </div>
            
            <div class="header-icons">
                <a href="#"><i class="far fa-user"></i></a>
                <a href="#"><i class="far fa-heart"></i></a>
                <a href="#"><i class="fas fa-shopping-cart"></i><span class="cart-count">3</span></a>
                <button class="mobile-menu-btn" id="mobileMenuBtn"><i class="fas fa-bars"></i></button>
            </div>
        </div>
    </header>

    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-content">
            <h1>Winter Collection 2025</h1>
            <p>Discover the latest trends in fashion, technology and accessories with up to 50% off selected items</p>
            <div class="hero-buttons">
                <a href="#" class="btn btn-primary">Shop Now</a>
                <a href="#" class="btn btn-secondary">Explore Deals</a>
            </div>
        </div>
    </section>

    <!-- Categories Section -->
    <section class="container">
        <div class="section-title">
            <h2>Shop by Category</h2>
            <p>Browse through our wide range of products in different categories</p>
        </div>
        
        <div class="categories">
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-mobile-alt"></i></div>
                <h3>Smartphones</h3>
                <p>Latest models from top brands</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-laptop"></i></div>
                <h3>Laptops</h3>
                <p>Powerful machines for work & play</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-tshirt"></i></div>
                <h3>Clothing</h3>
                <p>Trendy outfits for every occasion</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-headphones"></i></div>
                <h3>Gadgets</h3>
                <p>Smart devices for modern life</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-shoe-prints"></i></div>
                <h3>Footwear</h3>
                <p>Comfortable & stylish shoes</p>
            </div>
            <div class="category-card">
                <div class="category-icon"><i class="fas fa-watch"></i></div>
                <h3>Accessories</h3>
                <p>Complete your look</p>
            </div>
        </div>
    </section>

    <!-- Trending Products -->
    <section class="container">
        <div class="section-title">
            <h2>Trending Products</h2>
            <p>Discover what's popular right now</p>
        </div>
        
        <div class="products">
            <div class="product-card">
                <span class="product-badge">New</span>
                <img src="https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Smartphone" class="product-img">
                <div class="product-info">
                    <h3>iPhone 14 Pro Max</h3>
                    <div class="price">$1299 <span class="old-price">$1,199</span></div>
                    <div class="rating">★★★★★ <span>(128)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1593642632823-8f785ba67e45?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Laptop" class="product-img">
                <div class="product-info">
                    <h3>MacBook Pro 14"</h3>
                    <div class="price">$1,999</div>
                    <div class="rating">★★★★☆ <span>(86)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <span class="product-badge">-25%</span>
                <img src="https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Smartwatch" class="product-img">
                <div class="product-info">
                    <h3>Apple Watch Series 8</h3>
                    <div class="price">$349 <span class="old-price">$399</span></div>
                    <div class="rating">★★★★★ <span>(214)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1542272604-787c3835535d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Sneakers" class="product-img">
                <div class="product-info">
                    <h3>Nike Air Max 270</h3>
                    <div class="price">$250</div>
                    <div class="rating">★★★★☆ <span>(53)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Camera" class="product-img">
                <div class="product-info">
                    <h3>Sony A7 IV Camera</h3>
                    <div class="price">$2,499</div>
                    <div class="rating">★★★★★ <span>(42)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <span class="product-badge">Bestseller</span>
                <img src="https://images.unsplash.com/photo-1585386959984-a4155224a1ad?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Perfume" class="product-img">
                <div class="product-info">
                    <h3>Chanel No. 5</h3>
                    <div class="price">$120</div>
                    <div class="rating">★★★★★ <span>(189)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1551232864-3f0890e580d9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Backpack" class="product-img">
                <div class="product-info">
                    <h3>Travel Backpack</h3>
                    <div class="price">$79 <span class="old-price">$99</span></div>
                    <div class="rating">★★★★☆ <span>(67)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=80" alt="Headphones" class="product-img">
                <div class="product-info">
                    <h3>Sony WH-1000XM5</h3>
                    <div class="price">$399</div>
                    <div class="rating">★★★★★ <span>(156)</span></div>
                    <button class="add-to-cart">Add to Cart</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Deals Section -->
    <section class="deals">
        <div class="container">
            <div class="section-title">
                <h2>Flash Sale</h2>
                <p>Limited time offers - don't miss out!</p>
            </div>
            
            <div class="deal-container">
                <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1200&q=80" alt="MacBook Deal" class="deal-img">
                <div class="deal-content">
                    <h3>MacBook Air M2</h3>
                    <p>The incredibly thin and light MacBook Air with the powerful M2 chip.</p>
                    
                    <div class="deal-timer">
                        <div class="timer-box">
                            <span id="hours">24</span>
                            <span>Hours</span>
                        </div>
                        <div class="timer-box">
                            <span id="minutes">59</span>
                            <span>Minutes</span>
                        </div>
                        <div class="timer-box">
                            <span id="seconds">59</span>
                            <span>Seconds</span>
                        </div>
                    </div>
                    
                    <div class="deal-price">$999 <span class="deal-old-price">$1,199</span> <span class="deal-discount">-17%</span></div>
                    
                    <p>Only <strong>12</strong> items left at this price!</p>
                    
                    <button class="btn btn-primary" style="padding: 12px 30px; margin-top: 20px;">Buy Now</button>
                </div>
            </div>
        </div>
    </section>

    <!-- Testimonials Section -->
    <section class="container testimonials">
        <div class="section-title">
            <h2>What Our Customers Say</h2>
            <p>Trusted by thousands of happy customers worldwide</p>
        </div>
        
        <div class="testimonial-slider">
            <div class="testimonial-card">
                <div class="rating">★★★★★</div>
                <p>"I've never had such a smooth shopping experience. The products are top quality and exactly as described. Delivery was super fast too!"</p>
                <div class="user-info">
                    <img src="https://randomuser.me/api/portraits/women/43.jpg" alt="Sarah J." class="user-avatar">
                    <div>
                        <div class="user-name">Sarah J.</div>
                        <div class="user-title">Verified Buyer</div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="rating">★★★★☆</div>
                <p>"Great selection of products at competitive prices. Customer service was helpful when I had a question about my order."</p>
                <div class="user-info">
                    <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Michael T." class="user-avatar">
                    <div>
                        <div class="user-name">Michael T.</div>
                        <div class="user-title">Verified Buyer</div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="rating">★★★★★</div>
                <p>"The flash deals are amazing! I got a brand new laptop for 25% off. Will definitely be shopping here again."</p>
                <div class="user-info">
                    <img src="https://randomuser.me/api/portraits/women/65.jpg" alt="Emma L." class="user-avatar">
                    <div>
                        <div class="user-name">Emma L.</div>
                        <div class="user-title">Verified Buyer</div>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="rating">★★★★★</div>
                <p>"Fast shipping and excellent packaging. The product exceeded my expectations. Highly recommend this store!"</p>
                <div class="user-info">
                    <img src="https://randomuser.me/api/portraits/men/75.jpg" alt="David K." class="user-avatar">
                    <div>
                        <div class="user-name">David K.</div>
                        <div class="user-title">Verified Buyer</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Newsletter Section -->
    <section class="newsletter">
        <div class="container">
            <h2>Stay Updated</h2>
            <p>Subscribe to our newsletter and get 10% off your first order plus exclusive access to sales and new arrivals.</p>
            <form class="newsletter-form">
                <input type="email" placeholder="Enter your email address" required>
                <button type="submit">Subscribe</button>
            </form>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-container">
                <div class="footer-col">
                    <h3>NexusShop</h3>
                    <p>Your one-stop destination for all the latest products in technology, fashion, and lifestyle.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-youtube"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h3>Shop</h3>
                    <ul>
                        <li><a href="#">All Products</a></li>
                        <li><a href="#">Featured Items</a></li>
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">On Sale</a></li>
                        <li><a href="#">Gift Cards</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>Customer Service</h3>
                    <ul>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">FAQs</a></li>
                        <li><a href="#">Shipping Policy</a></li>
                        <li><a href="#">Returns & Exchanges</a></li>
                        <li><a href="#">Track Order</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>About</h3>
                    <ul>
                        <li><a href="#">Our Story</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Blog</a></li>
                    </ul>
                    <div class="payment-methods">
                        <img src="https://cdn-icons-png.flaticon.com/512/196/196578.png" alt="Visa">
                        <img src="https://cdn-icons-png.flaticon.com/512/196/196561.png" alt="Mastercard">
                        <img src="https://cdn-icons-png.flaticon.com/512/196/196566.png" alt="American Express">
                        <img src="https://cdn-icons-png.flaticon.com/512/825/825454.png" alt="PayPal">
                    </div>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2023 NexusShop. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Mobile Menu Toggle
        const mobileMenuBtn = document.getElementById('mobileMenuBtn');
        const mainNav = document.getElementById('mainNav');
        
        mobileMenuBtn.addEventListener('click', () => {
            mainNav.classList.toggle('active');
        });
        
        // Dropdown Toggle for Mobile
        const dropdowns = document.querySelectorAll('.dropdown');
        
        dropdowns.forEach(dropdown => {
            dropdown.addEventListener('click', () => {
                if (window.innerWidth <= 768) {
                    dropdown.classList.toggle('active');
                }
            });
        });
        
        // Countdown Timer
        function updateCountdown() {
            const now = new Date();
            const endOfDay = new Date();
            endOfDay.setHours(23, 59, 59, 999);
            
            const diff = endOfDay - now;
            
            const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
            const seconds = Math.floor((diff % (1000 * 60)) / 1000);
            
            document.getElementById('hours').textContent = String(Math.floor(hours)).padStart(2, '0');
            document.getElementById('minutes').textContent = String(minutes).padStart(2, '0');
            document.getElementById('seconds').textContent = String(seconds).padStart(2, '0');
        }
        
        setInterval(updateCountdown, 1000);
        updateCountdown();
        
        // Add to Cart Animation
        const addToCartButtons = document.querySelectorAll('.add-to-cart');
        const cartCount = document.querySelector('.cart-count');
        
        addToCartButtons.forEach(button => {
            button.addEventListener('click', () => {
                // Animation effect
                button.textContent = 'Added!';
                button.style.backgroundColor = 'var(--success)';
                
                // Update cart count
                const currentCount = parseInt(cartCount.textContent);
                cartCount.textContent = currentCount + 1;
                
                // Reset button after animation
                setTimeout(() => {
                    button.textContent = 'Add to Cart';
                    button.style.backgroundColor = 'var(--primary)';
                }, 1000);
            });
        });
        
        // Testimonial Slider
        const testimonialSlider = document.querySelector('.testimonial-slider');
        let isDown = false;
        let startX;
        let scrollLeft;
        
        testimonialSlider.addEventListener('mousedown', (e) => {
            isDown = true;
            startX = e.pageX - testimonialSlider.offsetLeft;
            scrollLeft = testimonialSlider.scrollLeft;
        });
        
        testimonialSlider.addEventListener('mouseleave', () => {
            isDown = false;
        });
        
        testimonialSlider.addEventListener('mouseup', () => {
            isDown = false;
        });
        
        testimonialSlider.addEventListener('mousemove', (e) => {
            if(!isDown) return;
            e.preventDefault();
            const x = e.pageX - testimonialSlider.offsetLeft;
            const walk = (x - startX) * 2;
            testimonialSlider.scrollLeft = scrollLeft - walk;
        });
    </script>
</body>
</html>
