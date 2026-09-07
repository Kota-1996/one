<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KOTA's Anime — Anime Streetwear</title>

<style>

/* =========================================================
   KOTA'S ANIME - GLOBAL STYLES
   ========================================================= */

* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

:root {
    --bg: #080812;
    --card: #11111f;
    --card2: #17172a;
    --text: #ffffff;
    --muted: #9d9db3;
    --purple: #8b5cf6;
    --pink: #ec4899;
    --blue: #38bdf8;
    --cyan: #22d3ee;
    --green: #22c55e;
    --orange: #fb923c;
    --red: #ef4444;
    --yellow: #facc15;
    --border: rgba(255,255,255,0.09);
}

html {
    scroll-behavior: smooth;
}

body {
    font-family: Arial, Helvetica, sans-serif;
    background:
        radial-gradient(circle at 10% 10%, rgba(139,92,246,.18), transparent 25%),
        radial-gradient(circle at 90% 20%, rgba(236,72,153,.12), transparent 25%),
        radial-gradient(circle at 50% 100%, rgba(34,211,238,.08), transparent 30%),
        var(--bg);
    color: var(--text);
    min-height: 100vh;
}

button,
input {
    font-family: inherit;
}

button {
    cursor: pointer;
}

a {
    color: inherit;
    text-decoration: none;
}

/* =========================================================
   SCROLLBAR
   ========================================================= */

::-webkit-scrollbar {
    width: 8px;
}

::-webkit-scrollbar-track {
    background: #080812;
}

::-webkit-scrollbar-thumb {
    background: linear-gradient(var(--purple), var(--pink));
    border-radius: 20px;
}

/* =========================================================
   HEADER
   ========================================================= */

.header {
    position: sticky;
    top: 0;
    z-index: 1000;
    height: 76px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 0 5%;
    background: rgba(8,8,18,.82);
    backdrop-filter: blur(20px);
    border-bottom: 1px solid var(--border);
}

.logo {
    display: flex;
    align-items: center;
    gap: 12px;
    font-size: 23px;
    font-weight: 900;
    letter-spacing: -1px;
}

.logo-icon {
    width: 43px;
    height: 43px;
    border-radius: 14px;
    display: grid;
    place-items: center;
    font-size: 25px;
    background: linear-gradient(135deg, var(--purple), var(--pink));
    box-shadow: 0 0 25px rgba(139,92,246,.45);
}

.logo span {
    background: linear-gradient(90deg,#fff,var(--pink),var(--cyan));
    -webkit-background-clip: text;
    color: transparent;
}

.nav {
    display: flex;
    align-items: center;
    gap: 28px;
}

.nav a {
    color: #c9c9d9;
    font-size: 14px;
    font-weight: 700;
    transition: .25s;
}

.nav a:hover {
    color: white;
}

.header-actions {
    display: flex;
    align-items: center;
    gap: 10px;
}

.icon-btn {
    position: relative;
    width: 42px;
    height: 42px;
    border-radius: 13px;
    border: 1px solid var(--border);
    background: rgba(255,255,255,.05);
    color: white;
    font-size: 18px;
    transition: .25s;
}

.icon-btn:hover {
    transform: translateY(-2px);
    background: rgba(139,92,246,.25);
    border-color: var(--purple);
}

.badge {
    position: absolute;
    top: -5px;
    right: -5px;
    min-width: 18px;
    height: 18px;
    border-radius: 20px;
    background: var(--pink);
    font-size: 10px;
    display: grid;
    place-items: center;
    font-weight: 900;
}

/* =========================================================
   HERO
   ========================================================= */

.hero {
    width: 90%;
    max-width: 1400px;
    margin: 30px auto 0;
    min-height: 540px;
    border: 1px solid var(--border);
    border-radius: 35px;
    overflow: hidden;
    position: relative;
    display: flex;
    align-items: center;
    padding: 65px;
    background:
        linear-gradient(90deg,rgba(7,7,17,.98) 0%,rgba(8,8,18,.8) 48%,rgba(8,8,18,.25)),
        url("https://images.unsplash.com/photo-1541560052-77ec1bbc09f7?auto=format&fit=crop&w=1800&q=90")
        center/cover;
}

.hero::before {
    content: "";
    position: absolute;
    width: 300px;
    height: 300px;
    border-radius: 50%;
    background: var(--purple);
    filter: blur(120px);
    opacity: .3;
    right: 15%;
    top: 20%;
}

.hero-content {
    position: relative;
    z-index: 2;
    max-width: 650px;
}

.hero-tag {
    display: inline-flex;
    padding: 8px 15px;
    border: 1px solid rgba(236,72,153,.4);
    border-radius: 30px;
    background: rgba(236,72,153,.1);
    color: #f9a8d4;
    font-size: 12px;
    font-weight: 800;
    margin-bottom: 20px;
}

.hero h1 {
    font-size: clamp(45px,7vw,86px);
    line-height: .94;
    letter-spacing: -5px;
    margin-bottom: 24px;
}

.hero h1 span {
    background: linear-gradient(90deg,var(--purple),var(--pink),var(--orange));
    -webkit-background-clip: text;
    color: transparent;
}

.hero p {
    color: #b7b7c9;
    font-size: 17px;
    line-height: 1.7;
    max-width: 560px;
    margin-bottom: 30px;
}

.hero-buttons {
    display: flex;
    gap: 14px;
    flex-wrap: wrap;
}

.primary-btn,
.secondary-btn {
    padding: 15px 24px;
    border-radius: 15px;
    border: none;
    font-weight: 900;
    transition: .25s;
}

.primary-btn {
    color: white;
    background: linear-gradient(135deg,var(--purple),var(--pink));
    box-shadow: 0 10px 30px rgba(139,92,246,.3);
}

.primary-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 15px 35px rgba(236,72,153,.35);
}

.secondary-btn {
    color: white;
    background: rgba(255,255,255,.08);
    border: 1px solid var(--border);
}

.secondary-btn:hover {
    background: rgba(255,255,255,.13);
}

/* =========================================================
   SECTION
   ========================================================= */

.section {
    width: 90%;
    max-width: 1400px;
    margin: 75px auto;
}

.section-head {
    display: flex;
    align-items: end;
    justify-content: space-between;
    gap: 20px;
    margin-bottom: 25px;
}

.section-head h2 {
    font-size: 32px;
    letter-spacing: -1.5px;
}

.section-head p {
    color: var(--muted);
    margin-top: 6px;
    font-size: 14px;
}

/* =========================================================
   CATEGORIES
   ========================================================= */

.categories {
    display: grid;
    grid-template-columns: repeat(6,1fr);
    gap: 13px;
}

.category {
    min-height: 105px;
    padding: 20px 12px;
    border-radius: 20px;
    border: 1px solid var(--border);
    background: linear-gradient(145deg,#141424,#0e0e1a);
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 9px;
    transition: .25s;
}

.category:hover {
    transform: translateY(-5px);
    border-color: rgba(139,92,246,.5);
    box-shadow: 0 15px 40px rgba(0,0,0,.25);
}

.category-icon {
    font-size: 29px;
}

.category span {
    font-size: 12px;
    color: #c5c5d2;
    font-weight: 800;
}

/* =========================================================
   FILTER BAR
   ========================================================= */

.shop-tools {
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 15px;
    margin-bottom: 25px;
    flex-wrap: wrap;
}

.filters {
    display: flex;
    gap: 8px;
    flex-wrap: wrap;
}

.filter {
    border: 1px solid var(--border);
    color: #c7c7d3;
    background: rgba(255,255,255,.04);
    padding: 10px 15px;
    border-radius: 12px;
    font-size: 12px;
    font-weight: 800;
}

.filter.active,
.filter:hover {
    color: white;
    background: linear-gradient(135deg,var(--purple),#6d28d9);
    border-color: transparent;
}

.search {
    width: 250px;
    position: relative;
}

.search input {
    width: 100%;
    padding: 12px 16px 12px 40px;
    border-radius: 13px;
    border: 1px solid var(--border);
    background: rgba(255,255,255,.05);
    color: white;
    outline: none;
}

.search input:focus {
    border-color: var(--purple);
}

.search-icon {
    position: absolute;
    left: 14px;
    top: 11px;
}

/* =========================================================
   PRODUCT GRID
   ========================================================= */

.product-grid {
    display: grid;
    grid-template-columns: repeat(4,1fr);
    gap: 20px;
}

.product {
    background: linear-gradient(145deg,#151525,#0e0e18);
    border: 1px solid var(--border);
    border-radius: 23px;
    overflow: hidden;
    transition: .3s;
    position: relative;
}

.product:hover {
    transform: translateY(-8px);
    border-color: rgba(139,92,246,.5);
    box-shadow: 0 25px 60px rgba(0,0,0,.4);
}

.product-image {
    height: 310px;
    position: relative;
    overflow: hidden;
    background: #191927;
}

.product-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s;
}

.product:hover .product-image img {
    transform: scale(1.07);
}

.discount {
    position: absolute;
    top: 14px;
    left: 14px;
    background: var(--red);
    color: white;
    padding: 7px 9px;
    border-radius: 8px;
    font-size: 11px;
    font-weight: 900;
}

.wishlist {
    position: absolute;
    top: 13px;
    right: 13px;
    width: 38px;
    height: 38px;
    border: 1px solid rgba(255,255,255,.15);
    background: rgba(0,0,0,.45);
    backdrop-filter: blur(10px);
    border-radius: 12px;
    color: white;
    font-size: 17px;
}

.wishlist:hover {
    color: #fb7185;
}

.product-info {
    padding: 18px;
}

.product-anime {
    font-size: 10px;
    color: var(--pink);
    font-weight: 900;
    text-transform: uppercase;
    letter-spacing: 1px;
    margin-bottom: 7px;
}

.product-title {
    font-size: 16px;
    font-weight: 900;
    margin-bottom: 9px;
}

.rating {
    font-size: 12px;
    color: var(--yellow);
    margin-bottom: 13px;
}

.price-row {
    display: flex;
    align-items: center;
    gap: 9px;
    margin-bottom: 15px;
}

.price {
    font-size: 20px;
    font-weight: 900;
}

.old-price {
    font-size: 12px;
    color: #77778a;
    text-decoration: line-through;
}

.add-btn {
    width: 100%;
    padding: 12px;
    border-radius: 12px;
    border: 1px solid rgba(139,92,246,.4);
    background: rgba(139,92,246,.12);
    color: white;
    font-weight: 900;
    transition: .2s;
}

.add-btn:hover {
    background: linear-gradient(135deg,var(--purple),var(--pink));
}

/* =========================================================
   FEATURE BANNER
   ========================================================= */

.feature-banner {
    min-height: 300px;
    border-radius: 30px;
    border: 1px solid var(--border);
    overflow: hidden;
    position: relative;
    display: flex;
    align-items: center;
    padding: 50px;
    background:
        linear-gradient(90deg,rgba(8,8,18,.97),rgba(8,8,18,.55)),
        url("https://images.unsplash.com/photo-1578632767115-351597cf2477?auto=format&fit=crop&w=1600&q=90")
        center/cover;
}

.feature-banner h2 {
    font-size: 42px;
    max-width: 580px;
    margin-bottom: 12px;
}

.feature-banner p {
    color: #b8b8c8;
    max-width: 500px;
    line-height: 1.6;
    margin-bottom: 20px;
}

/* =========================================================
   ANIME COLLECTION
   ========================================================= */

.anime-grid {
    display: grid;
    grid-template-columns: repeat(5,1fr);
    gap: 15px;
}

.anime-card {
    height: 260px;
    position: relative;
    overflow: hidden;
    border-radius: 22px;
    border: 1px solid var(--border);
}

.anime-card img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: .5s;
}

.anime-card:hover img {
    transform: scale(1.1);
}

.anime-overlay {
    position: absolute;
    inset: 0;
    display: flex;
    flex-direction: column;
    justify-content: end;
    padding: 20px;
    background: linear-gradient(transparent,rgba(0,0,0,.9));
}

.anime-overlay h3 {
    font-size: 18px;
}

.anime-overlay span {
    color: #c8c8d0;
    font-size: 11px;
    margin-top: 4px;
}

/* =========================================================
   PROMO
   ========================================================= */

.promo {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 20px;
}

.promo-card {
    padding: 35px;
    min-height: 210px;
    border-radius: 25px;
    border: 1px solid var(--border);
    background: linear-gradient(135deg,#171329,#12121e);
    position: relative;
    overflow: hidden;
}

.promo-card:nth-child(2) {
    background: linear-gradient(135deg,#151c2b,#12121e);
}

.promo-card::after {
    content: "✦";
    position: absolute;
    right: 35px;
    top: 20px;
    font-size: 100px;
    color: rgba(255,255,255,.04);
}

.promo-card h3 {
    font-size: 26px;
    margin-bottom: 10px;
}

.promo-card p {
    color: var(--muted);
    line-height: 1.6;
    max-width: 450px;
}

/* =========================================================
   PROFILE
   ========================================================= */

.profile-section {
    display: none;
}

.profile-card {
    border: 1px solid var(--border);
    background: linear-gradient(145deg,#161627,#0e0e18);
    border-radius: 28px;
    padding: 35px;
}

.profile-top {
    display: flex;
    align-items: center;
    gap: 20px;
    padding-bottom: 25px;
    border-bottom: 1px solid var(--border);
}

.avatar {
    width: 80px;
    height: 80px;
    border-radius: 25px;
    display: grid;
    place-items: center;
    font-size: 36px;
    background: linear-gradient(135deg,var(--purple),var(--pink));
}

.profile-name {
    font-size: 24px;
    font-weight: 900;
}

.profile-email {
    color: var(--muted);
    margin-top: 5px;
    font-size: 13px;
}

.profile-stats {
    display: grid;
    grid-template-columns: repeat(3,1fr);
    gap: 15px;
    margin-top: 25px;
}

.stat {
    padding: 20px;
    border-radius: 17px;
    background: rgba(255,255,255,.04);
}

.stat strong {
    display: block;
    font-size: 25px;
}

.stat span {
    color: var(--muted);
    font-size: 12px;
}

/* =========================================================
   CART
   ========================================================= */

.cart-panel {
    position: fixed;
    top: 0;
    right: -430px;
    width: 410px;
    height: 100vh;
    z-index: 2000;
    background: #10101c;
    border-left: 1px solid var(--border);
    box-shadow: -20px 0 70px rgba(0,0,0,.5);
    transition: .35s;
    padding: 25px;
    display: flex;
    flex-direction: column;
}

.cart-panel.open {
    right: 0;
}

.cart-head {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 25px;
}

.cart-head h2 {
    font-size: 24px;
}

.close-btn {
    border: 0;
    background: rgba(255,255,255,.07);
    color: white;
    width: 38px;
    height: 38px;
    border-radius: 12px;
}

.cart-items {
    flex: 1;
    overflow-y: auto;
}

.cart-item {
    display: flex;
    gap: 12px;
    padding: 14px 0;
    border-bottom: 1px solid var(--border);
}

.cart-item img {
    width: 65px;
    height: 75px;
    border-radius: 12px;
    object-fit: cover;
}

.cart-item-info {
    flex: 1;
}

.cart-item-info strong {
    display: block;
    font-size: 13px;
    margin-bottom: 8px;
}

.cart-item-info span {
    font-size: 13px;
    color: var(--purple);
    font-weight: 900;
}

.remove {
    border: 0;
    background: transparent;
    color: #777;
}

.cart-total {
    border-top: 1px solid var(--border);
    padding-top: 20px;
}

.total-row {
    display: flex;
    justify-content: space-between;
    margin-bottom: 15px;
}

.total-row strong {
    font-size: 23px;
}

/* =========================================================
   MODAL
   ========================================================= */

.modal {
    position: fixed;
    inset: 0;
    z-index: 3000;
    display: none;
    place-items: center;
    background: rgba(0,0,0,.72);
    backdrop-filter: blur(10px);
    padding: 20px;
}

.modal.open {
    display: grid;
}

.modal-box {
    width: 900px;
    max-width: 100%;
    max-height: 90vh;
    overflow: auto;
    border-radius: 28px;
    background: #11111e;
    border: 1px solid var(--border);
    padding: 25px;
}

.modal-grid {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: 30px;
}

.modal-grid img {
    width: 100%;
    height: 500px;
    object-fit: cover;
    border-radius: 20px;
}

.modal-details {
    padding: 20px 5px;
}

.modal-details h2 {
    font-size: 32px;
    margin-bottom: 10px;
}

.modal-details p {
    color: var(--muted);
    line-height: 1.7;
    margin: 20px 0;
}

.sizes {
    display: flex;
    gap: 8px;
    margin: 20px 0;
}

.size {
    width: 45px;
    height: 42px;
    border: 1px solid var(--border);
    border-radius: 10px;
    background: rgba(255,255,255,.04);
    color: white;
}

.size:hover {
    border-color: var(--purple);
}

/* =========================================================
   FOOTER
   ========================================================= */

.footer {
    margin-top: 100px;
    padding: 55px 5%;
    border-top: 1px solid var(--border);
    background: #07070e;
}

.footer-grid {
    max-width: 1400px;
    margin: auto;
    display: grid;
    grid-template-columns: 2fr 1fr 1fr 1fr;
    gap: 50px;
}

.footer h3 {
    margin-bottom: 17px;
}

.footer p,
.footer a {
    color: #858598;
    font-size: 13px;
    line-height: 2;
}

.footer a {
    display: block;
}

.footer-bottom {
    max-width: 1400px;
    margin: 40px auto 0;
    padding-top: 20px;
    border-top: 1px solid var(--border);
    color: #656577;
    font-size: 12px;
}

/* =========================================================
   TOAST
   ========================================================= */

.toast {
    position: fixed;
    bottom: 25px;
    left: 50%;
    transform: translate(-50%,100px);
    background: #181827;
    border: 1px solid var(--border);
    padding: 14px 20px;
    border-radius: 14px;
    box-shadow: 0 15px 40px rgba(0,0,0,.4);
    z-index: 5000;
    transition: .3s;
    font-size: 13px;
}

.toast.show {
    transform: translate(-50%,0);
}

/* =========================================================
   RESPONSIVE
   ========================================================= */

@media(max-width:1100px) {

    .product-grid {
        grid-template-columns: repeat(3,1fr);
    }

    .categories {
        grid-template-columns: repeat(3,1fr);
    }

    .anime-grid {
        grid-template-columns: repeat(3,1fr);
    }

    .nav {
        display: none;
    }
}

@media(max-width:750px) {

    .header {
        padding: 0 20px;
    }

    .logo {
        font-size: 18px;
    }

    .hero {
        width: 94%;
        padding: 35px 25px;
        min-height: 520px;
        border-radius: 25px;
    }

    .hero h1 {
        letter-spacing: -3px;
    }

    .section {
        width: 94%;
        margin: 55px auto;
    }

    .product-grid {
        grid-template-columns: repeat(2,1fr);
        gap: 12px;
    }

    .product-image {
        height: 230px;
    }

    .anime-grid {
        grid-template-columns: repeat(2,1fr);
    }

    .promo {
        grid-template-columns: 1fr;
    }

    .feature-banner {
        padding: 30px;
    }

    .feature-banner h2 {
        font-size: 30px;
    }

    .footer-grid {
        grid-template-columns: 1fr 1fr;
    }

    .cart-panel {
        width: 100%;
        right: -100%;
    }

    .modal-grid {
        grid-template-columns: 1fr;
    }

    .modal-grid img {
        height: 350px;
    }
}

@media(max-width:480px) {

    .product-grid {
        grid-template-columns: 1fr 1fr;
    }

    .product-image {
        height: 200px;
    }

    .categories {
        grid-template-columns: repeat(2,1fr);
    }

    .anime-grid {
        grid-template-columns: 1fr 1fr;
    }

    .search {
        width: 100%;
    }

    .shop-tools {
        align-items: stretch;
    }

    .footer-grid {
        grid-template-columns: 1fr;
    }
}

</style>
</head>

<body>

<!-- =======================================================
     HEADER
     ======================================================= -->

<header class="header">

    <div class="logo">
        <div class="logo-icon">⚡</div>
        <span>KOTA's Anime</span>
    </div>

    <nav class="nav">
        <a href="#home">Home</a>
        <a href="#shop">Shop</a>
        <a href="#anime">Anime</a>
        <a href="#offers">Offers</a>
        <a href="#profile" onclick="showProfile()">Profile</a>
    </nav>

    <div class="header-actions">

        <button class="icon-btn" onclick="showProfile()" title="Profile">
            👤
        </button>

        <button class="icon-btn" onclick="openCart()" title="Cart">
            🛒
            <span class="badge" id="cartCount">0</span>
        </button>

    </div>

</header>


<!-- =======================================================
     HERO
     ======================================================= -->

<section class="hero" id="home">

    <div class="hero-content">

        <div class="hero-tag">
            ✦ NEW GENERATION ANIME STREETWEAR
        </div>

        <h1>
            WEAR YOUR<br>
            <span>ANIME SOUL.</span>
        </h1>

        <p>
            Premium anime-inspired streetwear for the generation
            that grew up with legendary characters, impossible
            battles and unforgettable stories.
        </p>

        <div class="hero-buttons">
            <button class="primary-btn" onclick="scrollToShop()">
                Explore Collection →
            </button>

            <button class="secondary-btn" onclick="showToast('🔥 30% OFF selected anime drops!')">
                View Offers
            </button>
        </div>

    </div>

</section>


<!-- =======================================================
     CATEGORIES
     ======================================================= -->

<section class="section">

    <div class="section-head">
        <div>
            <h2>Shop Your Style</h2>
            <p>Choose your battle outfit.</p>
        </div>
    </div>

    <div class="categories">

        <div class="category" onclick="filterProducts('T-Shirt')">
            <div class="category-icon">👕</div>
            <span>T-Shirts</span>
        </div>

        <div class="category" onclick="filterProducts('Hoodie')">
            <div class="category-icon">🧥</div>
            <span>Hoodies</span>
        </div>

        <div class="category" onclick="filterProducts('Oversized')">
            <div class="category-icon">🔥</div>
            <span>Oversized</span>
        </div>

        <div class="category" onclick="filterProducts('Jacket')">
            <div class="category-icon">🥋</div>
            <span>Jackets</span>
        </div>

        <div class="category" onclick="showToast('👟 Sneakers collection coming soon!')">
            <div class="category-icon">👟</div>
            <span>Sneakers</span>
        </div>

        <div class="category" onclick="showToast('🎒 Accessories collection coming soon!')">
            <div class="category-icon">🎒</div>
            <span>Accessories</span>
        </div>

    </div>

</section>


<!-- =======================================================
     SHOP
     ======================================================= -->

<section class="section" id="shop">

    <div class="section-head">

        <div>
            <h2>🔥 Trending Drops</h2>
            <p>Most wanted anime fits right now.</p>
        </div>

    </div>

    <div class="shop-tools">

        <div class="filters">

            <button class="filter active" onclick="filterProducts('All')">
                All
            </button>

            <button class="filter" onclick="filterProducts('Naruto')">
                Naruto
            </button>

            <button class="filter" onclick="filterProducts('JJK')">
                Jujutsu Kaisen
            </button>

            <button class="filter" onclick="filterProducts('One Piece')">
                One Piece
            </button>

            <button class="filter" onclick="filterProducts('Demon Slayer')">
                Demon Slayer
            </button>

        </div>

        <div class="search">
            <span class="search-icon">🔍</span>
            <input
                type="text"
                id="searchInput"
                placeholder="Search anime or product..."
                oninput="searchProducts()"
            >
        </div>

    </div>


    <div class="product-grid" id="productGrid"></div>

</section>


<!-- =======================================================
     FEATURE BANNER
     ======================================================= -->

<section class="section">

    <div class="feature-banner">

        <div>

            <h2>
                UNLEASH YOUR
                <span style="color:#c084fc;">INNER HERO.</span>
            </h2>

            <p>
                Limited anime drops. Premium fabrics.
                Designs inspired by the characters that defined
                an entire generation.
            </p>

            <button class="primary-btn"
                    onclick="showToast('⚡ Limited collection unlocked!')">
                Shop Limited Drop
            </button>

        </div>

    </div>

</section>


<!-- =======================================================
     ANIME COLLECTION
     ======================================================= -->

<section class="section" id="anime">

    <div class="section-head">

        <div>
            <h2>⚔️ Anime Universe</h2>
            <p>Pick your world. Pick your character.</p>
        </div>

    </div>

    <div class="anime-grid">

        <div class="anime-card">
            <img src="https://cdn.myanimelist.net/images/characters/9/131317.jpg"
                 alt="Naruto">
            <div class="anime-overlay">
                <h3>Naruto</h3>
                <span>Believe it!</span>
            </div>
        </div>

        <div class="anime-card">
            <img src="https://cdn.myanimelist.net/images/characters/11/536977.jpg"
                 alt="Gojo">
            <div class="anime-overlay">
                <h3>Jujutsu Kaisen</h3>
                <span>Unlimited Void</span>
            </div>
        </div>

        <div class="anime-card">
            <img src="https://cdn.myanimelist.net/images/characters/9/310307.jpg"
                 alt="Luffy">
            <div class="anime-overlay">
                <h3>One Piece</h3>
                <span>King of the Pirates</span>
            </div>
        </div>

        <div class="anime-card">
            <img src="https://cdn.myanimelist.net/images/characters/10/503869.jpg"
                 alt="Tanjiro">
            <div class="anime-overlay">
                <h3>Demon Slayer</h3>
                <span>Hinokami Kagura</span>
            </div>
        </div>

        <div class="anime-card">
            <img src="https://cdn.myanimelist.net/images/characters/12/553471.jpg"
                 alt="Goku">
            <div class="anime-overlay">
                <h3>Dragon Ball</h3>
                <span>Ultra Instinct</span>
            </div>
        </div>

    </div>

</section>


<!-- =======================================================
     PROMO CARDS
     ======================================================= -->

<section class="section" id="offers">

    <div class="promo">

        <div class="promo-card">

            <h3>⚡ First Order</h3>

            <p>
                New to KOTA's Anime?
                Get an instant 15% discount on your first
                anime streetwear order.
            </p>

            <br>

            <button class="primary-btn"
                    onclick="showToast('🎁 Code KOTA15 copied!')">
                Use KOTA15
            </button>

        </div>


        <div class="promo-card">

            <h3>🌙 Night Drop</h3>

            <p>
                Exclusive midnight releases with limited stock.
                Once they're gone, they're gone.
            </p>

            <br>

            <button class="secondary-btn"
                    onclick="showToast('🌙 Night Drop launches at 12:00 AM')">
                Notify Me
            </button>

        </div>

    </div>

</section>


<!-- =======================================================
     PROFILE
     ======================================================= -->

<section class="section profile-section" id="profile">

    <div class="section-head">
        <div>
            <h2>👤 My Profile</h2>
            <p>Your anime shopping identity.</p>
        </div>
    </div>

    <div class="profile-card">

        <div class="profile-top">

            <div class="avatar">
                🥷
            </div>

            <div>
                <div class="profile-name">
                    KOTA SAI KUMAR
                </div>

                <div class="profile-email">
                    animewarrior@example.com
                </div>
            </div>

        </div>

        <div class="profile-stats">

            <div class="stat">
                <strong>12</strong>
                <span>Orders</span>
            </div>

            <div class="stat">
                <strong>08</strong>
                <span>Wishlist</span>
            </div>

            <div class="stat">
                <strong>450</strong>
                <span>Anime Points</span>
            </div>

        </div>

    </div>

</section>


<!-- =======================================================
     CART
     ======================================================= -->

<aside class="cart-panel" id="cartPanel">

    <div class="cart-head">

        <h2>🛒 Your Cart</h2>

        <button class="close-btn" onclick="closeCart()">
            ✕
        </button>

    </div>

    <div class="cart-items" id="cartItems">

        <div style="color:#777;text-align:center;padding:50px 10px;">
            Your cart is empty.
        </div>

    </div>

    <div class="cart-total">

        <div class="total-row">
            <span>Total</span>
            <strong id="cartTotal">₹0</strong>
        </div>

        <button class="primary-btn"
                style="width:100%;"
                onclick="checkout()">
            Checkout →
        </button>

    </div>

</aside>


<!-- =======================================================
     PRODUCT MODAL
     ======================================================= -->

<div class="modal" id="productModal">

    <div class="modal-box">

        <button
            class="close-btn"
            style="float:right;"
            onclick="closeModal()">
            ✕
        </button>

        <div class="modal-grid">

            <img id="modalImage" src="" alt="Product">

            <div class="modal-details">

                <div class="product-anime" id="modalAnime">
                    ANIME
                </div>

                <h2 id="modalTitle">
                    Product
                </h2>

                <div class="rating">
                    ★★★★★ 4.9
                </div>

                <div class="price-row">

                    <span class="price" id="modalPrice">
                        ₹999
                    </span>

                    <span class="old-price" id="modalOldPrice">
                        ₹1499
                    </span>

                </div>

                <p id="modalDescription">
                    Premium anime-inspired streetwear.
                </p>

                <strong>
                    Select Size
                </strong>

                <div class="sizes">

                    <button class="size">S</button>
                    <button class="size">M</button>
                    <button class="size">L</button>
                    <button class="size">XL</button>
                    <button class="size">XXL</button>

                </div>

                <button
                    class="primary-btn"
                    style="width:100%;"
                    id="modalAdd">
                    Add To Cart
                </button>

            </div>

        </div>

    </div>

</div>


<!-- =======================================================
     FOOTER
     ======================================================= -->

<footer class="footer">

    <div class="footer-grid">

        <div>

            <div class="logo">
                <div class="logo-icon">⚡</div>
                <span>KOTA's Anime</span>
            </div>

            <br>

            <p>
                Anime fashion for everyone.
                Built for dreamers, fighters and fans
                who never stopped believing.
            </p>

        </div>

        <div>

            <h3>Shop</h3>

            <a href="#shop">T-Shirts</a>
            <a href="#shop">Hoodies</a>
            <a href="#shop">Oversized</a>
            <a href="#shop">Limited Drops</a>

        </div>

        <div>

            <h3>Help</h3>

            <a href="#">Shipping</a>
            <a href="#">Returns</a>
            <a href="#">Size Guide</a>
            <a href="#">Contact</a>

        </div>

        <div>

            <h3>Follow</h3>

            <a href="#">Instagram</a>
            <a href="#">YouTube</a>
            <a href="#">X / Twitter</a>
            <a href="#">Discord</a>

        </div>

    </div>

    <div class="footer-bottom">
        © 2026 KOTA's Anime. Anime-inspired fashion universe.
    </div>

</footer>


<!-- =======================================================
     TOAST
     ======================================================= -->

<div class="toast" id="toast">
    Added to cart!
</div>


<script>

/* =========================================================
   PRODUCT DATA
   ========================================================= */

const products = [

    {
        id: 1,
        anime: "Naruto",
        category: "T-Shirt",
        title: "Hidden Leaf Oversized Tee",
        price: 899,
        oldPrice: 1499,
        discount: 40,
        rating: 4.9,
        image: "https://cdn.myanimelist.net/images/characters/9/131317.jpg",
        description:
        "Premium oversized streetwear inspired by the Hidden Leaf shinobi. Heavy cotton feel with a bold anime graphic."
    },

    {
        id: 2,
        anime: "JJK",
        category: "Hoodie",
        title: "Gojo Infinity Hoodie",
        price: 1499,
        oldPrice: 2299,
        discount: 35,
        rating: 5,
        image: "https://cdn.myanimelist.net/images/characters/11/536977.jpg",
        description:
        "A heavyweight black hoodie inspired by the strongest sorcerer. Designed for a clean futuristic streetwear look."
    },

    {
        id: 3,
        anime: "One Piece",
        category: "Oversized",
        title: "Straw Hat Pirate Tee",
        price: 999,
        oldPrice: 1599,
        discount: 38,
        rating: 4.8,
        image: "https://cdn.myanimelist.net/images/characters/9/310307.jpg",
        description:
        "Oversized pirate-era streetwear inspired by the future Pirate King."
    },

    {
        id: 4,
        anime: "Demon Slayer",
        category: "T-Shirt",
        title: "Sun Breathing Tee",
        price: 849,
        oldPrice: 1399,
        discount: 39,
        rating: 4.9,
        image: "https://cdn.myanimelist.net/images/characters/10/503869.jpg",
        description:
        "Clean black anime tee inspired by Tanjiro and the legendary Sun Breathing technique."
    },

    {
        id: 5,
        anime: "Dragon Ball",
        category: "Hoodie",
        title: "Ultra Instinct Hoodie",
        price: 1599,
        oldPrice: 2499,
        discount: 36,
        rating: 4.9,
        image: "https://cdn.myanimelist.net/images/characters/12/553471.jpg",
        description:
        "Futuristic Dragon Ball hoodie inspired by the Ultra Instinct transformation."
    },

    {
        id: 6,
        anime: "Solo Leveling",
        category: "Jacket",
        title: "Shadow Monarch Jacket",
        price: 1899,
        oldPrice: 2999,
        discount: 37,
        rating: 5,
        image: "https://images.unsplash.com/photo-1551488831-00ddcb6c6bd3?auto=format&fit=crop&w=900&q=85",
        description:
        "Dark premium jacket inspired by the Shadow Monarch aesthetic. Built for a powerful streetwear silhouette."
    },

    {
        id: 7,
        anime: "Naruto",
        category: "Oversized",
        title: "Akatsuki Cloud Tee",
        price: 949,
        oldPrice: 1599,
        discount: 41,
        rating: 4.8,
        image: "https://images.unsplash.com/photo-1521572163474-6864f9cf17ab?auto=format&fit=crop&w=900&q=85",
        description:
        "Black oversized tee with an Akatsuki-inspired streetwear aesthetic."
    },

    {
        id: 8,
        anime: "JJK",
        category: "T-Shirt",
        title: "Cursed Energy Tee",
        price: 799,
        oldPrice: 1299,
        discount: 38,
        rating: 4.7,
        image: "https://images.unsplash.com/photo-1503341504253-dff4815485f1?auto=format&fit=crop&w=900&q=85",
        description:
        "Minimal futuristic tee designed around the visual energy of Jujutsu Kaisen."
    },

    {
        id: 9,
        anime: "One Piece",
        category: "Hoodie",
        title: "Gear Fifth Hoodie",
        price: 1699,
        oldPrice: 2699,
        discount: 37,
        rating: 4.9,
        image: "https://images.unsplash.com/photo-1556821840-3a63f95609a7?auto=format&fit=crop&w=900&q=85",
        description:
        "A powerful oversized hoodie inspired by Luffy's Gear Fifth transformation."
    },

    {
        id: 10,
        anime: "Demon Slayer",
        category: "Jacket",
        title: "Hashira Street Jacket",
        price: 1999,
        oldPrice: 3299,
        discount: 39,
        rating: 5,
        image: "https://images.unsplash.com/photo-1551028719-00167b16eac5?auto=format&fit=crop&w=900&q=85",
        description:
        "Premium street jacket inspired by the Hashira aesthetic."
    },

    {
        id: 11,
        anime: "Solo Leveling",
        category: "Oversized",
        title: "Igris Shadow Tee",
        price: 1099,
        oldPrice: 1799,
        discount: 39,
        rating: 4.9,
        image: "https://images.unsplash.com/photo-1503342217505-b0a15ec3261c?auto=format&fit=crop&w=900&q=85",
        description:
        "A dark knight-inspired oversized tee inspired by Igris and the Shadow Army."
    },

    {
        id: 12,
        anime: "Naruto",
        category: "Hoodie",
        title: "Sage Mode Hoodie",
        price: 1549,
        oldPrice: 2399,
        discount: 35,
        rating: 4.8,
        image: "https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&w=900&q=85",
        description:
        "Premium sage-inspired hoodie combining classic anime energy with modern fashion."
    }

];


/* =========================================================
   STATE
   ========================================================= */

let cart = [];

let currentFilter = "All";


/* =========================================================
   RENDER PRODUCTS
   ========================================================= */

function renderProducts(list = products) {

    const grid = document.getElementById("productGrid");

    grid.innerHTML = "";

    if(list.length === 0) {

        grid.innerHTML = `
            <div style="
                grid-column:1/-1;
                text-align:center;
                padding:70px 20px;
                color:#777;
            ">
                <div style="font-size:45px;">😵</div>
                <h3 style="margin:15px 0;color:white;">
                    No anime found
                </h3>
                <p>
                    Try another character or collection.
                </p>
            </div>
        `;

        return;
    }


    list.forEach(product => {

        const card = document.createElement("div");

        card.className = "product";

        card.innerHTML = `

            <div
                class="product-image"
                onclick="openProduct(${product.id})"
                style="cursor:pointer;"
            >

                <img
                    src="${product.image}"
                    alt="${product.title}"
                    loading="lazy"
                >

                <span class="discount">
                    -${product.discount}%
                </span>

                <button
                    class="wishlist"
                    onclick="event.stopPropagation();wishlist('${product.title}')"
                >
                    ♡
                </button>

            </div>

            <div class="product-info">

                <div class="product-anime">
                    ${product.anime}
                </div>

                <div class="product-title">
                    ${product.title}
                </div>

                <div class="rating">
                    ★★★★★ ${product.rating}
                </div>

                <div class="price-row">

                    <span class="price">
                        ₹${product.price}
                    </span>

                    <span class="old-price">
                        ₹${product.oldPrice}
                    </span>

                </div>

                <button
                    class="add-btn"
                    onclick="addToCart(${product.id})"
                >
                    + Add to Cart
                </button>

            </div>
        `;

        grid.appendChild(card);

    });

}


/* =========================================================
   FILTER PRODUCTS
   ========================================================= */

function filterProducts(filter) {

    currentFilter = filter;

    document.querySelectorAll(".filter")
        .forEach(button => button.classList.remove("active"));

    if(filter === "All") {

        document.querySelector(".filter")
            ?.classList.add("active");

    }


    let filtered = products;

    if(filter !== "All") {

        filtered = products.filter(product =>
            product.anime === filter ||
            product.category === filter
        );

    }

    renderProducts(filtered);

    document.getElementById("shop")
        .scrollIntoView({behavior:"smooth"});

}


/* =========================================================
   SEARCH
   ========================================================= */

function searchProducts() {

    const value =
        document.getElementById("searchInput")
        .value
        .toLowerCase()
        .trim();


    let filtered = products;


    if(currentFilter !== "All") {

        filtered = filtered.filter(product =>
            product.anime === currentFilter ||
            product.category === currentFilter
        );

    }


    if(value) {

        filtered = filtered.filter(product =>
            product.title.toLowerCase().includes(value) ||
            product.anime.toLowerCase().includes(value) ||
            product.category.toLowerCase().includes(value)
        );

    }


    renderProducts(filtered);

}


/* =========================================================
   CART
   ========================================================= */

function addToCart(id) {

    const product =
        products.find(item => item.id === id);

    if(!product) return;


    cart.push(product);

    updateCart();

    showToast(
        "🔥 " + product.title + " added to cart!"
    );

}


function updateCart() {

    const container =
        document.getElementById("cartItems");

    const count =
        document.getElementById("cartCount");

    const total =
        document.getElementById("cartTotal");


    count.textContent = cart.length;


    if(cart.length === 0) {

        container.innerHTML = `
            <div style="
                color:#777;
                text-align:center;
                padding:50px 10px;
            ">
                Your cart is empty.
            </div>
        `;

        total.textContent = "₹0";

        return;
    }


    container.innerHTML = "";


    cart.forEach((product,index) => {

        const item =
            document.createElement("div");

        item.className = "cart-item";

        item.innerHTML = `

            <img
                src="${product.image}"
                alt="${product.title}"
            >

            <div class="cart-item-info">

                <strong>
                    ${product.title}
                </strong>

                <span>
                    ₹${product.price}
                </span>

            </div>

            <button
                class="remove"
                onclick="removeCart(${index})"
            >
                ✕
            </button>
        `;

        container.appendChild(item);

    });


    const sum =
        cart.reduce(
            (total,product) =>
            total + product.price,
            0
        );


    total.textContent =
        "₹" + sum.toLocaleString("en-IN");

}


function removeCart(index) {

    cart.splice(index,1);

    updateCart();

    showToast("Item removed from cart.");

}


function openCart() {

    document
        .getElementById("cartPanel")
        .classList.add("open");

}


function closeCart() {

    document
        .getElementById("cartPanel")
        .classList.remove("open");

}


/* =========================================================
   PRODUCT MODAL
   ========================================================= */

function openProduct(id) {

    const product =
        products.find(item => item.id === id);

    if(!product) return;


    document.getElementById("modalImage")
        .src = product.image;

    document.getElementById("modalTitle")
        .textContent = product.title;

    document.getElementById("modalAnime")
        .textContent = product.anime;

    document.getElementById("modalPrice")
        .textContent = "₹" + product.price;

    document.getElementById("modalOldPrice")
        .textContent = "₹" + product.oldPrice;

    document.getElementById("modalDescription")
        .textContent = product.description;


    document.getElementById("modalAdd")
        .onclick = function() {

            addToCart(product.id);

            closeModal();

        };


    document
        .getElementById("productModal")
        .classList.add("open");

}


function closeModal() {

    document
        .getElementById("productModal")
        .classList.remove("open");

}


/* =========================================================
   WISHLIST
   ========================================================= */

function wishlist(name) {

    showToast(
        "❤️ " + name + " added to wishlist!"
    );

}


/* =========================================================
   PROFILE
   ========================================================= */

function showProfile() {

    const profile =
        document.getElementById("profile");

    profile.style.display = "block";

    profile.scrollIntoView({
        behavior:"smooth"
    });

}


/* =========================================================
   CHECKOUT
   ========================================================= */

function checkout() {

    if(cart.length === 0) {

        showToast(
            "🛒 Add something before checkout."
        );

        return;
    }


    showToast(
        "⚡ Checkout demo — payment integration ready."
    );

}


/* =========================================================
   HERO SCROLL
   ========================================================= */

function scrollToShop() {

    document
        .getElementById("shop")
        .scrollIntoView({
            behavior:"smooth"
        });

}


/* =========================================================
   TOAST
   ========================================================= */

let toastTimer;

function showToast(message) {

    const toast =
        document.getElementById("toast");

    toast.textContent = message;

    toast.classList.add("show");


    clearTimeout(toastTimer);


    toastTimer = setTimeout(() => {

        toast.classList.remove("show");

    },2500);

}


/* =========================================================
   MODAL CLICK OUTSIDE
   ========================================================= */

document
    .getElementById("productModal")
    .addEventListener("click", function(event) {

        if(event.target === this) {

            closeModal();

        }

    });


/* =========================================================
   ESCAPE KEY
   ========================================================= */

document.addEventListener("keydown", function(event) {

    if(event.key === "Escape") {

        closeModal();
        closeCart();

    }

});


/* =========================================================
   INITIALIZE
   ========================================================= */

renderProducts();

updateCart();


</script>

</body>
</html>
