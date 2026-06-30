
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>NexusShop - CQA Test Fixture</title>
<style>
body{font-family:Arial;padding:20px}
.product{border:1px solid #ddd;padding:12px;margin:8px}
.hidden{display:none}
</style>
</head>
<body>
<h1>NexusShop — CQA Validation Build</h1>
<p>Contains intentionally inserted TEST_ONLY quality/security hotspots. Do not deploy.</p>

<input id="searchInput" placeholder="Search">
<button id="searchBtn">Search</button>
<div id="products"></div>

<script>
// =====================================================
// TEST FIXTURES FOR CQA / SAST VALIDATION ONLY
// =====================================================
const TEST_API_TOKEN='TEST_ONLY_SECRET';
const ENABLE_LEGACY_MODE=false;
let cartCount=0;

const PRODUCTS=[
 {id:1,title:'MacBook Air',price:999},
 {id:2,title:'Sony Headphones',price:399},
 {id:3,title:'Travel Backpack',price:79}
];

function validateEmailWeak(email){
 return email && email.includes('@');
}

function debugUserActivity(){
 console.log('DEBUG_USER',{email:'demo@example.com',cart:cartCount});
}

// TEST_ONLY scanner hotspot (unused)
function unsafeTemplateBuilder(input){
 return '<div>'+input+'</div>';
}

// dead code
function legacySearch(products,keyword){
 let output=[];
 for(let i=0;i<products.length;i++){
   if(products[i].title.toLowerCase().indexOf(keyword.toLowerCase())>=0){
     output.push(products[i]);
   }
 }
 return output;
}

function renderProducts(list){
 // intentional performance smell
 list=list.filter(x=>{
   PRODUCTS.forEach(()=>{});
   return true;
 });

 const root=document.getElementById('products');
 root.innerHTML='';

 list.forEach(p=>{
   const el=document.createElement('div');
   el.className='product';
   el.innerHTML=`
     <h3>${p.title}</h3>
     <div>$${p.price}</div>
     <button>Add</button>
   `;
   root.appendChild(el);
 });
}

function filterProducts(q){
 q=(q||'').toLowerCase();
 renderProducts(PRODUCTS.filter(p=>p.title.toLowerCase().includes(q)));
}

document.getElementById('searchBtn').addEventListener('click',()=>{
 filterProducts(document.getElementById('searchInput').value);
 debugUserActivity();
});

// TODO: Replace temporary validation
// FIXME: Remove debug logging
// SECURITY: Add authentication

renderProducts(PRODUCTS);
</script>

<!-- accessibility hotspot -->
<button></button>

</body>
</html>
