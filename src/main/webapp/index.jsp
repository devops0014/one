<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>NexusShop - Modern Store</title>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800&display=swap" rel="stylesheet">
<style>
:root{
 --bg:#f8fafc;
 --card:#ffffff;
 --text:#0f172a;
 --muted:#64748b;
 --primary:#4f46e5;
 --primary2:#7c3aed;
 --border:#e2e8f0;
}
*{margin:0;padding:0;box-sizing:border-box}
body{font-family:Inter,sans-serif;background:var(--bg);color:var(--text)}
.container{max-width:1200px;margin:auto;padding:0 20px}
header{
position:sticky;top:0;z-index:100;
backdrop-filter:blur(12px);
background:rgba(255,255,255,.85);
border-bottom:1px solid var(--border);
}
.nav{display:flex;justify-content:space-between;align-items:center;padding:18px 0}
.logo{font-size:28px;font-weight:800}
.logo span{color:var(--primary)}
nav a{margin-left:24px;color:var(--text);text-decoration:none;font-weight:600}
.hero{
min-height:70vh;
display:flex;align-items:center;justify-content:center;
text-align:center;color:white;
background:linear-gradient(135deg,rgba(15,23,42,.8),rgba(79,70,229,.7)),
url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=1600&q=80');
background-size:cover;background-position:center;
}
.hero h1{font-size:4rem;margin-bottom:15px}
.hero p{max-width:700px;margin:auto;font-size:1.1rem}
.btn{
display:inline-block;margin-top:24px;
padding:14px 28px;border-radius:999px;
background:linear-gradient(135deg,var(--primary),var(--primary2));
color:white;text-decoration:none;font-weight:700;
}
.section{padding:70px 0}
.title{text-align:center;margin-bottom:40px}
.grid{display:grid;gap:24px}
.categories{grid-template-columns:repeat(auto-fit,minmax(180px,1fr))}
.cat{
background:var(--card);
padding:28px;border-radius:20px;text-align:center;
box-shadow:0 10px 25px rgba(0,0,0,.05);
transition:.3s;
}
.cat:hover{transform:translateY(-8px);background:var(--primary);color:white}
.products{grid-template-columns:repeat(auto-fit,minmax(250px,1fr))}
.card{
background:white;border-radius:22px;
overflow:hidden;
box-shadow:0 10px 30px rgba(0,0,0,.06);
transition:.3s;
}
.card:hover{transform:translateY(-10px)}
.card img{width:100%;height:230px;object-fit:cover}
.card-body{padding:18px}
.price{font-size:22px;font-weight:800;color:var(--primary)}
.add{
width:100%;border:none;padding:12px;margin-top:12px;
border-radius:12px;background:var(--text);color:white;cursor:pointer
}
.sale{
background:linear-gradient(135deg,#111827,#1e293b);
color:white;padding:40px;border-radius:24px;text-align:center;
}
.newsletter{
background:white;border-radius:24px;padding:40px;text-align:center;
box-shadow:0 10px 30px rgba(0,0,0,.05);
}
input{
padding:14px;border:1px solid var(--border);
border-radius:12px;width:300px;max-width:100%;
}
footer{
padding:30px;text-align:center;color:var(--muted)
}
#cart{
position:fixed;right:20px;bottom:20px;
background:var(--primary);color:white;
padding:15px 20px;border-radius:999px;font-weight:700;
box-shadow:0 10px 30px rgba(79,70,229,.4)
}
</style>
</head>
<body>

<header>
<div class="container nav">
<div class="logo">Nexus<span>Shop</span></div>
<nav>
<a href="#">Home</a>
<a href="#">Products</a>
<a href="#">Deals</a>
<a href="#">Contact</a>
</nav>
</div>
</header>

<section class="hero">
<div>
<h1>Premium Shopping Experience</h1>
<p>Discover the latest technology, fashion and accessories with Apple-inspired design and premium quality.</p>
<a href="#products" class="btn">Shop Now</a>
</div>
</section>

<section class="section container">
<div class="title">
<h2>Shop by Category</h2>
</div>
<div class="grid categories">
<div class="cat">📱 Smartphones</div>
<div class="cat">💻 Laptops</div>
<div class="cat">⌚ Watches</div>
<div class="cat">🎧 Headphones</div>
<div class="cat">👟 Footwear</div>
<div class="cat">🎒 Accessories</div>
</div>
</section>

<section class="section container" id="products">
<div class="title">
<h2>Trending Products</h2>
</div>

<div class="grid products">
<div class="card">
<img src="https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?auto=format&fit=crop&w=800&q=80">
<div class="card-body">
<h3>iPhone Pro</h3>
<p class="price">$999</p>
<button class="add">Add to Cart</button>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1496181133206-80ce9b88a853?auto=format&fit=crop&w=800&q=80">
<div class="card-body">
<h3>MacBook Air</h3>
<p class="price">$1299</p>
<button class="add">Add to Cart</button>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1546868871-7041f2a55e12?auto=format&fit=crop&w=800&q=80">
<div class="card-body">
<h3>Apple Watch</h3>
<p class="price">$399</p>
<button class="add">Add to Cart</button>
</div>
</div>

<div class="card">
<img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?auto=format&fit=crop&w=800&q=80">
<div class="card-body">
<h3>Headphones</h3>
<p class="price">$249</p>
<button class="add">Add to Cart</button>
</div>
</div>
</div>
</section>

<section class="section container">
<div class="sale">
<h2>Flash Sale</h2>
<h1>Up to 40% OFF</h1>
<p>Limited time offer on premium products.</p>
</div>
</section>

<section class="section container">
<div class="newsletter">
<h2>Stay Updated</h2>
<p style="margin:12px 0 20px">Get exclusive deals directly in your inbox.</p>
<input type="email" placeholder="Enter your email">
<a href="#" class="btn">Subscribe</a>
</div>
</section>

<footer>
© 2026 NexusShop. All Rights Reserved.
</footer>

<div id="cart">Cart: <span id="count">0</span></div>

<script>
let count=0;
document.querySelectorAll('.add').forEach(btn=>{
 btn.addEventListener('click',()=>{
   count++;
   document.getElementById('count').textContent=count;
   btn.textContent='Added ✓';
   setTimeout(()=>btn.textContent='Add to Cart',1000);
 });
});
</script>

</body>
</html>
