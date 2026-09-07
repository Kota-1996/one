<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ANIMEVERSE — Anime Clothing Store</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">

<style>
:root{
    --bg:#070711;
    --card:#111124;
    --card2:#171733;
    --pink:#ff2f92;
    --purple:#8b5cf6;
    --cyan:#22d3ee;
    --yellow:#ffe45c;
    --lime:#b8ff3d;
    --white:#fff;
    --muted:#a7a7bd;
    --border:rgba(255,255,255,.1);
    --radius:24px;
}

*{
    box-sizing:border-box;
    margin:0;
    padding:0;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Inter,Arial,sans-serif;
    color:var(--white);
    background:
        radial-gradient(circle at 10% 10%,rgba(255,47,146,.16),transparent 25%),
        radial-gradient(circle at 90% 20%,rgba(34,211,238,.12),transparent 25%),
        linear-gradient(180deg,#070711,#0b0b19);
    min-height:100vh;
}

a{
    text-decoration:none;
    color:inherit;
}

button{
    border:0;
    cursor:pointer;
    font-family:inherit;
}

.container{
    width:min(1280px,92%);
    margin:auto;
}

/* HEADER */

header{
    position:sticky;
    top:0;
    z-index:1000;
    background:rgba(7,7,17,.82);
    backdrop-filter:blur(20px);
    border-bottom:1px solid var(--border);
}

.header{
    height:76px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:20px;
}

.logo{
    font-size:23px;
    font-weight:900;
    letter-spacing:-1px;
}

.logo span{
    color:var(--pink);
}

nav{
    display:flex;
    gap:8px;
}

nav a{
    color:var(--muted);
    padding:10px 14px;
    border-radius:12px;
    font-size:13px;
    font-weight:700;
}

nav a:hover{
    color:white;
    background:rgba(255,255,255,.08);
}

.actions{
    display:flex;
    gap:8px;
}

.icon{
    width:42px;
    height:42px;
    border-radius:50%;
    color:white;
    background:rgba(255,255,255,.07);
    border:1px solid var(--border);
}

/* HERO */

.hero{
    min-height:650px;
    margin:22px 0;
    border-radius:32px;
    overflow:hidden;
    position:relative;
    display:flex;
    align-items:center;
    background:
        linear-gradient(90deg,rgba(5,5,14,.97),rgba(5,5,14,.78),rgba(5,5,14,.25)),
        url("https://images.unsplash.com/photo-1578632767115-351597cf2477?auto=format&fit=crop&w=1800&q=85")
        center/cover;
}

.hero:after{
    content:"";
    position:absolute;
    width:450px;
    height:450px;
    right:-100px;
    top:-120px;
    border-radius:50%;
    background:linear-gradient(135deg,var(--pink),var(--purple),var(--cyan));
    filter:blur(90px);
    opacity:.35;
}

.hero-content{
    position:relative;
    z-index:2;
    max-width:700px;
}

.badge{
    display:inline-block;
    padding:8px 15px;
    border-radius:50px;
    background:rgba(255,47,146,.15);
    border:1px solid rgba(255,47,146,.35);
    color:#ff8bc2;
    font-size:11px;
    font-weight:900;
    margin-bottom:22px;
}

.hero h1{
    font-size:clamp(52px,8vw,96px);
    line-height:.9;
    letter-spacing:-6px;
    margin-bottom:25px;
}

.gradient{
    background:linear-gradient(90deg,var(--pink),var(--purple),var(--cyan));
    -webkit-background-clip:text;
    background-clip:text;
    color:transparent;
}

.hero p{
    color:#c4c4d4;
    max-width:600px;
    line-height:1.7;
    margin-bottom:30px;
}

.buttons{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

.btn{
    padding:14px 22px;
    border-radius:14px;
    font-weight:800;
    font-size:13px;
}

.primary{
    color:white;
    background:linear-gradient(100deg,var(--pink),var(--purple));
}

.secondary{
    color:white;
    background:rgba(255,255,255,.08);
    border:1px solid var(--border);
}

/* SECTION */

section{
    padding:65px 0;
}

.section-title{
    display:flex;
    justify-content:space-between;
    align-items:end;
    margin-bottom:28px;
}

.section-title h2{
    font-size:34px;
    letter-spacing:-2px;
}

.section-title p{
    color:var(--muted);
    font-size:13px;
    margin-top:6px;
}

/* CATEGORIES */

.categories{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:14px;
}

.category{
    min-height:140px;
    padding:22px;
    border-radius:22px;
    background:var(--card);
    border:1px solid var(--border);
    transition:.25s;
}

.category:hover{
    transform:translateY(-7px);
    border-color:var(--pink);
}

.category-icon{
    width:50px;
    height:50px;
    border-radius:15px;
    display:grid;
    place-items:center;
    font-size:24px;
    margin-bottom:17px;
    background:linear-gradient(135deg,var(--pink),var(--purple));
}

.category h3{
    font-size:14px;
    margin-bottom:5px;
}

.category p{
    color:var(--muted);
    font-size:10px;
}

/* FILTERS */

.filters{
    display:flex;
    gap:9px;
    flex-wrap:wrap;
    margin-bottom:28px;
}

.filter{
    padding:10px 15px;
    border-radius:50px;
    background:var(--card);
    color:var(--muted);
    border:1px solid var(--border);
    font-size:11px;
    font-weight:800;
}

.filter.active,
.filter:hover{
    color:white;
    background:linear-gradient(100deg,var(--pink),var(--purple));
}

/* PRODUCTS */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product{
    overflow:hidden;
    background:var(--card);
    border:1px solid var(--border);
    border-radius:24px;
    transition:.25s;
}

.product:hover{
    transform:translateY(-8px);
    box-shadow:0 20px 60px rgba(0,0,0,.4);
    border-color:rgba(139,92,246,.6);
}

.product-image{
    height:300px;
    position:relative;
    overflow:hidden;
    background:#18182d;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s;
}

.product:hover img{
    transform:scale(1.07);
}

.tag{
    position:absolute;
    left:12px;
    top:12px;
    padding:6px 10px;
    border-radius:30px;
    background:var(--lime);
    color:#111;
    font-size:9px;
    font-weight:900;
}

.wish{
    position:absolute;
    right:12px;
    top:12px;
    width:38px;
    height:38px;
    border-radius:50%;
    background:rgba(0,0,0,.6);
    color:white;
}

.product-info{
    padding:18px;
}

.brand{
    color:var(--cyan);
    text-transform:uppercase;
    font-size:9px;
    font-weight:900;
    letter-spacing:1px;
}

.product h3{
    margin:7px 0;
    font-size:15px;
}

.description{
    color:var(--muted);
    font-size:11px;
    line-height:1.5;
    min-height:34px;
}

.rating{
    color:var(--yellow);
    font-size:11px;
    margin-top:10px;
}

.product-bottom{
    display:flex;
    justify-content:space-between;
    align-items:center;
    margin-top:15px;
}

.price{
    font-size:18px;
    font-weight:900;
}

.add{
    padding:9px 13px;
    border-radius:10px;
    color:white;
    background:linear-gradient(100deg,var(--purple),var(--pink));
    font-size:10px;
    font-weight:900;
}

/* FEATURE */

.feature{
    display:grid;
    grid-template-columns:1fr 1fr;
    min-height:420px;
    overflow:hidden;
    border-radius:30px;
    background:linear-gradient(135deg,#25102e,#10182d);
    border:1px solid var(--border);
}

.feature-image{
    background:
        linear-gradient(90deg,transparent,rgba(16,16,30,.3)),
        url("https://images.unsplash.com/photo-1564507004663-b6dfb3c824d5?auto=format&fit=crop&w=1000&q=85")
        center/cover;
}

.feature-content{
    display:flex;
    justify-content:center;
    flex-direction:column;
    padding:55px;
}

.feature-content small{
    color:var(--pink);
    font-weight:900;
    letter-spacing:2px;
    margin-bottom:12px;
}

.feature-content h2{
    font-size:44px;
    line-height:.95;
    letter-spacing:-3px;
    margin-bottom:18px;
}

.feature-content p{
    color:var(--muted);
    line-height:1.7;
    font-size:13px;
    max-width:480px;
    margin-bottom:25px;
}

/* COLLECTION */

.collection-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:18px;
}

.collection{
    min-height:230px;
    padding:28px;
    border-radius:24px;
    border:1px solid var(--border);
    background:
        linear-gradient(135deg,rgba(255,47,146,.1),rgba(34,211,238,.04)),
        var(--card);
    transition:.25s;
}

.collection:hover{
    transform:translateY(-7px);
}

.collection .emoji{
    font-size:38px;
    margin-bottom:22px;
}

.collection h3{
    font-size:18px;
    margin-bottom:9px;
}

.collection p{
    color:var(--muted);
    line-height:1.6;
    font-size:12px;
}

/* NEWSLETTER */

.newsletter{
    padding:50px;
    border-radius:28px;
    text-align:center;
    background:
        radial-gradient(circle at 50% 0,rgba(255,47,146,.25),transparent 50%),
        var(--card);
    border:1px solid var(--border);
}

.newsletter h2{
    font-size:34px;
    margin-bottom:10px;
}

.newsletter p{
    color:var(--muted);
    font-size:13px;
    margin-bottom:22px;
}

.email-box{
    max-width:520px;
    margin:auto;
    display:flex;
    gap:8px;
}

.email-box input{
    flex:1;
    padding:14px 17px;
    border-radius:13px;
    border:1px solid var(--border);
    background:#080812;
    color:white;
    outline:none;
}

.email-box button{
    padding:14px 20px;
    border-radius:13px;
    background:linear-gradient(100deg,var(--pink),var(--purple));
    color:white;
    font-weight:800;
}

/* FOOTER */

footer{
    border-top:1px solid var(--border);
    padding:50px 0 25px;
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:35px;
    margin-bottom:35px;
}

footer h4{
    margin-bottom:13px;
    font-size:12px;
}

footer p,
footer a{
    color:var(--muted);
    font-size:11px;
    line-height:2;
}

footer a:hover{
    color:var(--pink);
}

.copyright{
    padding-top:20px;
    border-top:1px solid var(--border);
    text-align:center;
    color:#646477;
    font-size:10px;
}

/* CART */

.cart{
    position:fixed;
    right:25px;
    bottom:25px;
    z-index:900;
    padding:15px 20px;
    border-radius:50px;
    background:linear-gradient(100deg,var(--pink),var(--purple));
    box-shadow:0 15px 40px rgba(255,47,146,.3);
    font-size:12px;
    font-weight:900;
}

/* MOBILE */

@media(max-width:1100px){
    .categories{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }
}

@media(max-width:800px){
    nav{
        display:none;
    }

    .hero{
        min-height:570px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .feature{
        grid-template-columns:1fr;
    }

    .feature-image{
        min-height:300px;
    }

    .collection-grid{
        grid-template-columns:1fr;
    }
}

@media(max-width:520px){
    .hero h1{
        font-size:46px;
        letter-spacing:-3px;
    }

    .hero p{
        font-size:12px;
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        gap:10px;
    }

    .product-image{
        height:220px;
    }

    .product-info{
        padding:13px;
    }

    .product h3{
        font-size:12px;
    }

    .description{
        font-size:9px;
    }

    .price{
        font-size:14px;
    }

    .feature-content{
        padding:30px;
    }

    .feature-content h2{
        font-size:32px;
    }

    .newsletter{
        padding:30px 18px;
    }

    .email-box{
        flex-direction:column;
    }

    .footer-grid{
        grid-template-columns:1fr;
    }
}
</style>
</head>

<body>

<header>
<div class="container header">

<a href="#" class="logo">ANIME<span>VERSE</span> ✦</a>

<nav>
<a href="#home">Home</a>
<a href="#anime">Anime</a>
<a href="#products">Shop</a>
<a href="#featured">Featured</a>
<a href="#collections">Collections</a>
</nav>

<div class="actions">
<button class="icon">⌕</button>
<button class="icon">♡</button>
<button class="icon">☰</button>
</div>

</div>
</header>

<main>

<section class="hero" id="home">
<div class="container">
<div class="hero-content">

<div class="badge">⚡ NEW DROP • ANIME STREETWEAR 2026</div>

<h1>
WEAR YOUR<br>
<span class="gradient">ANIME.</span>
</h1>

<p>
Level up your wardrobe with character-inspired anime
streetwear. Discover oversized T-shirts, hoodies,
pants, jackets and collectible fashion inspired by
your favorite anime worlds.
</p>

<div class="buttons">
<a href="#products" class="btn primary">SHOP THE DROP →</a>
<a href="#anime" class="btn secondary">EXPLORE ANIME</a>
</div>

</div>
</div>
</section>

<section id="anime">
<div class="container">

<div class="section-title">
<div>
<h2>Choose Your Universe</h2>
<p>Find your favorite anime collection.</p>
</div>
</div>

<div class="categories">

<div class="category">
<div class="category-icon">🍥</div>
<h3>Naruto</h3>
<p>Ninja streetwear</p>
</div>

<div class="category">
<div class="category-icon">📓</div>
<h3>Death Note</h3>
<p>Dark collection</p>
</div>

<div class="category">
<div class="category-icon">⚔️</div>
<h3>Attack on Titan</h3>
<p>Scout-inspired gear</p>
</div>

<div class="category">
<div class="category-icon">🏐</div>
<h3>Haikyuu!!</h3>
<p>Volleyball style</p>
</div>

<div class="category">
<div class="category-icon">⚽</div>
<h3>Blue Lock</h3>
<p>Football collection</p>
</div>

<div class="category">
<div class="category-icon">✨</div>
<h3>Anime Mix</h3>
<p>All characters</p>
</div>

</div>
</div>
</section>

<section id="products">
<div class="container">

<div class="section-title">
<div>
<h2>Trending Drops</h2>
<p>Fresh anime fits for your next look.</p>
</div>
</div>

<div class="filters">
<button class="filter active" onclick="filterProducts('all')">ALL</button>
<button class="filter" onclick="filterProducts('naruto')">NARUTO</button>
<button class="filter" onclick="filterProducts('death')">DEATH NOTE</button>
<button class="filter" onclick="filterProducts('aot')">ATTACK ON TITAN</button>
<button class="filter" onclick="filterProducts('haikyuu')">HAIKYUU</button>
<button class="filter" onclick="filterProducts('soccer')">SOCCER ANIME</button>
</div>

<div class="products">

<article class="product" data-anime="naruto">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=800&q=85">
<span class="tag">HOT</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Ninja Collection</div>
<h3>Naruto Orange Oversized Tee</h3>
<p class="description">Orange streetwear T-shirt inspired by the Hidden Leaf ninja aesthetic.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹1,299</span>
<button class="add" onclick="addCart('Naruto Orange Tee')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="naruto">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=800&q=85">
<span class="tag">NEW</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Leaf Village</div>
<h3>Akatsuki Cloud Hoodie</h3>
<p class="description">Black oversized hoodie featuring a bold red cloud-inspired graphic.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹2,499</span>
<button class="add" onclick="addCart('Akatsuki Hoodie')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="death">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1576566588028-4147f3842f27?auto=format&fit=crop&w=800&q=85">
<span class="tag">DARK</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Dark Universe</div>
<h3>Death Note Black Tee</h3>
<p class="description">Minimal black graphic tee inspired by the mysterious Death Note universe.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹1,399</span>
<button class="add" onclick="addCart('Death Note Tee')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="death">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=800&q=85">
<span class="tag">LIMITED</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Kira Collection</div>
<h3>Kira Oversized Shirt</h3>
<p class="description">Dark oversized fashion piece with notebook-inspired artwork.</p>
<div class="rating">★★★★☆</div>
<div class="product-bottom">
<span class="price">₹1,599</span>
<button class="add" onclick="addCart('Kira Shirt')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="aot">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=800&q=85">
<span class="tag">EPIC</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Scout Regiment</div>
<h3>Attack on Titan Scout Tee</h3>
<p class="description">Military-inspired anime streetwear with a bold scout aesthetic.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹1,499</span>
<button class="add" onclick="addCart('AOT Scout Tee')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="aot">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=800&q=85">
<span class="tag">NEW</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Titan Series</div>
<h3>Survey Corps Cargo Pants</h3>
<p class="description">Streetwear cargo pants inspired by the Survey Corps aesthetic.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹2,199</span>
<button class="add" onclick="addCart('Survey Corps Pants')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="haikyuu">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1518611012118-696072aa579a?auto=format&fit=crop&w=800&q=85">
<span class="tag">SPORT</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Volleyball Club</div>
<h3>Haikyuu Orange Tee</h3>
<p class="description">High-energy volleyball inspired oversized anime T-shirt.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹1,299</span>
<button class="add" onclick="addCart('Haikyuu Tee')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="haikyuu">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1523381294911-8d3cead13475?auto=format&fit=crop&w=800&q=85">
<span class="tag">FRESH</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Karasuno</div>
<h3>Karasuno Varsity Jacket</h3>
<p class="description">Sporty varsity-inspired jacket for volleyball anime fans.</p>
<div class="rating">★★★★☆</div>
<div class="product-bottom">
<span class="price">₹2,999</span>
<button class="add" onclick="addCart('Karasuno Jacket')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="soccer">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1526232761682-d26e03ac148e?auto=format&fit=crop&w=800&q=85">
<span class="tag">GOAL</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Striker Series</div>
<h3>Blue Striker Oversized Tee</h3>
<p class="description">Football anime inspired streetwear built for competitive energy.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹1,399</span>
<button class="add" onclick="addCart('Blue Striker Tee')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="soccer">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1579952363873-27f3bade9f55?auto=format&fit=crop&w=800&q=85">
<span class="tag">MVP</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Football Anime</div>
<h3>Striker Training Pants</h3>
<p class="description">Relaxed fit sports pants with an anime football aesthetic.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹1,899</span>
<button class="add" onclick="addCart('Striker Pants')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="naruto">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1523398002811-999ca8dec234?auto=format&fit=crop&w=800&q=85">
<span class="tag">DROP</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Shinobi</div>
<h3>Hidden Leaf Cargo Pants</h3>
<p class="description">Relaxed cargo pants inspired by shinobi street fashion.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹2,099</span>
<button class="add" onclick="addCart('Leaf Cargo Pants')">ADD +</button>
</div>
</div>
</article>

<article class="product" data-anime="aot">
<div class="product-image">
<img src="https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=800&q=85">
<span class="tag">TRENDING</span>
<button class="wish" onclick="wishlist(this)">♡</button>
</div>
<div class="product-info">
<div class="brand">Titan Street</div>
<h3>Wall Maria Oversized Tee</h3>
<p class="description">Minimal dark streetwear design inspired by the walls and titan universe.</p>
<div class="rating">★★★★★</div>
<div class="product-bottom">
<span class="price">₹1,449</span>
<button class="add" onclick="addCart('Wall Maria Tee')">ADD +</button>
</div>
</div>
</article>

</div>
</div>
</section>

<section id="featured">
<div class="container">

<div class="feature">

<div class="feature-image"></div>

<div class="feature-content">
<small>ANIMEVERSE EXCLUSIVE</small>

<h2>
YOUR CHARACTER.<br>
<span class="gradient">YOUR FIT.</span>
</h2>

<p>
Mix anime characters, bold graphics and modern
streetwear silhouettes. Build a look that feels
straight out of your favorite anime world.
</p>

<a href="#products" class="btn primary">EXPLORE DROPS →</a>
</div>

</div>
</div>
</section>

<section id="collections">
<div class="container">

<div class="section-title">
<div>
<h2>Shop By Style</h2>
<p>Different fits for different anime moods.</p>
</div>
</div>

<div class="collection-grid">

<div class="collection">
<div class="emoji">👕</div>
<h3>Oversized Tees</h3>
<p>
Heavyweight streetwear T-shirts featuring
anime-inspired graphics and character artwork.
</p>
</div>

<div class="collection">
<div class="emoji">👖</div>
<h3>Anime Pants</h3>
<p>
Cargo pants, relaxed trousers and sportswear
designed for an oversized anime aesthetic.
</p>
</div>

<div class="collection">
<div class="emoji">🧥</div>
<h3>Hoodies & Jackets</h3>
<p>
Layer your fit with bold anime-inspired
hoodies, varsity jackets and outerwear.
</p>
</div>

</div>
</div>
</section>

<section>
<div class="container">

<div class="newsletter">

<h2>JOIN THE ANIME DROP</h2>

<p>
Get notified when new anime-inspired collections arrive.
</p>

<div class="email-box">
<input type="email" placeholder="Enter your email">
<button onclick="subscribe()">JOIN NOW</button>
</div>

</div>

</div>
</section>

</main>

<footer>

<div class="container">

<div class="footer-grid">

<div>
<a href="#" class="logo">ANIME<span>VERSE</span> ✦</a>
<p>
Anime-inspired clothing and streetwear for fans
who want to wear their favorite worlds.
</p>
</div>

<div>
<h4>SHOP</h4>
<a href="#products">T-Shirts</a><br>
<a href="#products">Pants</a><br>
<a href="#products">Hoodies</a><br>
<a href="#products">Jackets</a>
</div>

<div>
<h4>ANIME</h4>
<a href="#anime">Naruto</a><br>
<a href="#anime">Death Note</a><br>
<a href="#anime">Attack on Titan</a><br>
<a href="#anime">Haikyuu</a>
</div>

<div>
<h4>HELP</h4>
<a href="#">Shipping</a><br>
<a href="#">Returns</a><br>
<a href="#">Size Guide</a><br>
<a href="#">Contact</a>
</div>

</div>

<div class="copyright">
© 2026 AnimeVerse • Anime-inspired fashion demo
</div>

</div>

</footer>

<div class="cart" id="cart">
🛒 CART <span id="cartCount">0</span>
</div>

<script>

let cartCount = 0;

/* CART */

function addCart(product){

    cartCount++;

    document.getElementById("cartCount").textContent = cartCount;

    alert(product + " added to cart!");

}


/* WISHLIST */

function wishlist(button){

    if(button.textContent === "♡"){

        button.textContent = "♥";

        button.style.background =
        "linear-gradient(135deg,#ff2f92,#8b5cf6)";

    }else{

        button.textContent = "♡";

        button.style.background = "";

    }

}


/* FILTER */

function filterProducts(category){

    const products =
    document.querySelectorAll(".product");

    products.forEach(product => {

        if(category === "all"){

            product.style.display = "";

        }else{

            product.style.display =
            product.dataset.anime === category
            ? ""
            : "none";

        }

    });

    document.querySelectorAll(".filter")
    .forEach(btn => btn.classList.remove("active"));

    event.target.classList.add("active");

}


/* NEWSLETTER */

function subscribe(){

    const input =
    document.querySelector(".email-box input");

    if(input.value.trim() === ""){

        alert("Please enter your email.");

        return;

    }

    alert("Welcome to AnimeVerse! ✨");

    input.value = "";

}


/* SEARCH */

document.querySelector(".actions .icon")
.addEventListener("click",function(){

    const search =
    prompt("Search anime clothing:");

    if(!search) return;

    const query =
    search.toLowerCase();

    document.querySelectorAll(".product")
    .forEach(product => {

        const text =
        product.innerText.toLowerCase();

        product.style.display =
        text.includes(query)
        ? ""
        : "none";

    });

    document
    .getElementById("products")
    .scrollIntoView({
        behavior:"smooth"
    });

});


/* NAVIGATION */

document.querySelectorAll("nav a")
.forEach(link => {

    link.addEventListener("click",function(){

        document
        .querySelectorAll("nav a")
        .forEach(item =>
            item.classList.remove("active")
        );

        this.classList.add("active");

    });

});


/* MOBILE ACTION */

document.querySelectorAll(".actions .icon")[2]
.addEventListener("click",function(){

    const nav =
    document.querySelector("nav");

    if(nav.style.display === "flex"){

        nav.style.display = "";

    }else{

        nav.style.display = "flex";
        nav.style.position = "absolute";
        nav.style.top = "76px";
        nav.style.left = "4%";
        nav.style.right = "4%";
        nav.style.flexDirection = "column";
        nav.style.padding = "15px";
        nav.style.background = "#111124";
        nav.style.border = "1px solid rgba(255,255,255,.1)";
        nav.style.borderRadius = "18px";

    }

});

</script>

</body>
</html>
