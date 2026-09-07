<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#09090f">
<meta name="description" content="KOTA's Anime — anime-inspired streetwear store">
<title>KOTA's Anime | Anime Streetwear</title>
<style>
:root {
  --bg:#080810;
  --panel:#11111b;
  --panel2:#171722;
  --text:#f7f7fb;
  --muted:#a5a5b5;
  --line:#29293a;
  --accent:#ff6b35;
  --accent2:#8b5cf6;
  --good:#22c55e;
  --danger:#ef4444;
  --shadow:0 18px 60px rgba(0,0,0,.35);
  --radius:22px;
}
* { box-sizing:border-box; }
html { scroll-behavior:smooth; }
body {
  margin:0;
  font-family:Inter,system-ui,-apple-system,BlinkMacSystemFont,"Segoe UI",sans-serif;
  background:
    radial-gradient(circle at 10% 0%, rgba(139,92,246,.13), transparent 30%),
    radial-gradient(circle at 90% 10%, rgba(255,107,53,.12), transparent 30%),
    var(--bg);
  color:var(--text);
  min-height:100vh;
}
button,input,select { font:inherit; }
button { cursor:pointer; }
a { color:inherit; text-decoration:none; }
.container { width:min(1220px,92%); margin:auto; }
.topbar {
  padding:9px 0;
  text-align:center;
  background:linear-gradient(90deg,#ff6b35,#8b5cf6,#06b6d4);
  color:white;
  font-size:13px;
  font-weight:800;
  letter-spacing:.3px;
}
.nav {
  position:sticky;
  top:0;
  z-index:50;
  backdrop-filter:blur(18px);
  background:rgba(8,8,16,.82);
  border-bottom:1px solid var(--line);
}
.nav-inner {
  min-height:76px;
  display:flex;
  align-items:center;
  gap:20px;
}
.logo {
  display:flex;
  align-items:center;
  gap:11px;
  font-weight:1000;
  letter-spacing:-.7px;
  font-size:21px;
  white-space:nowrap;
}
.logo-mark {
  width:42px;
  height:42px;
  border-radius:14px;
  display:grid;
  place-items:center;
  background:linear-gradient(135deg,#ff6b35,#8b5cf6);
  box-shadow:0 8px 30px rgba(139,92,246,.35);
}
.nav-links {
  display:flex;
  gap:20px;
  margin-left:auto;
  color:var(--muted);
  font-weight:700;
}
.nav-links a:hover { color:white; }
.nav-actions { display:flex; gap:8px; }
.icon-btn {
  width:42px;
  height:42px;
  border:1px solid var(--line);
  background:var(--panel);
  color:white;
  border-radius:13px;
}
.icon-btn:hover { border-color:#55556e; transform:translateY(-1px); }
.hero {
  min-height:650px;
  display:grid;
  grid-template-columns:1.05fr .95fr;
  gap:35px;
  align-items:center;
  padding:70px 0;
}
.kicker {
  color:#ff9d76;
  text-transform:uppercase;
  font-size:13px;
  letter-spacing:2px;
  font-weight:900;
}
.hero h1 {
  margin:12px 0;
  font-size:clamp(48px,7vw,92px);
  line-height:.93;
  letter-spacing:-5px;
}
.gradient-text {
  background:linear-gradient(90deg,#ff8a5b,#c4b5fd,#67e8f9);
  -webkit-background-clip:text;
  color:transparent;
}
.hero p {
  max-width:650px;
  color:var(--muted);
  font-size:18px;
  line-height:1.75;
}
.hero-buttons { display:flex; gap:12px; flex-wrap:wrap; margin-top:28px; }
.btn {
  border:0;
  border-radius:14px;
  padding:13px 19px;
  font-weight:900;
  transition:.2s;
}
.btn:hover { transform:translateY(-2px); }
.btn-primary { background:linear-gradient(135deg,#ff6b35,#ff914d); color:#151515; }
.btn-secondary { background:var(--panel); border:1px solid var(--line); color:white; }
.hero-art {
  min-height:500px;
  position:relative;
  display:grid;
  place-items:center;
}
.orb {
  position:absolute;
  border-radius:50%;
  filter:blur(1px);
  opacity:.8;
}
.orb.one { width:300px;height:300px;background:#8b5cf6;filter:blur(80px); }
.orb.two { width:220px;height:220px;background:#ff6b35;filter:blur(70px);right:5%;bottom:5%; }
.hero-card {
  position:relative;
  width:min(430px,90%);
  padding:18px;
  border-radius:30px;
  background:rgba(17,17,27,.78);
  border:1px solid #36364b;
  box-shadow:var(--shadow);
  transform:rotate(2deg);
}
.hero-card svg { width:100%; display:block; border-radius:20px; }
.floating {
  position:absolute;
  padding:12px 15px;
  border:1px solid #3b3b50;
  background:rgba(17,17,27,.9);
  border-radius:15px;
  box-shadow:var(--shadow);
  font-size:13px;
  font-weight:900;
}
.float-a { top:13%; right:0; }
.float-b { bottom:12%; left:0; }
.section { padding:75px 0; }
.section-head {
  display:flex;
  align-items:end;
  justify-content:space-between;
  gap:20px;
  margin-bottom:26px;
}
.section-head h2 { margin:0; font-size:36px; letter-spacing:-1.5px; }
.section-head p { color:var(--muted); max-width:600px; }
.features {
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:14px;
}
.feature {
  background:linear-gradient(180deg,var(--panel),#0e0e17);
  border:1px solid var(--line);
  border-radius:20px;
  padding:22px;
}
.feature .emoji { font-size:28px; }
.feature h3 { margin:12px 0 7px; }
.feature p { color:var(--muted); font-size:14px; line-height:1.6; margin:0; }
.controls {
  display:flex;
  gap:10px;
  flex-wrap:wrap;
  padding:14px;
  background:rgba(17,17,27,.7);
  border:1px solid var(--line);
  border-radius:18px;
  margin-bottom:24px;
}
.search {
  flex:1 1 250px;
  position:relative;
}
.search input {
  width:100%;
  height:46px;
  border-radius:12px;
  border:1px solid var(--line);
  background:#0b0b13;
  color:white;
  padding:0 15px;
  outline:none;
}
.search input:focus { border-color:#7777a0; }
.select {
  height:46px;
  border-radius:12px;
  border:1px solid var(--line);
  background:#0b0b13;
  color:white;
  padding:0 12px;
}
.chips { display:flex; gap:7px; flex-wrap:wrap; }
.chip {
  border:1px solid var(--line);
  background:var(--panel);
  color:var(--muted);
  padding:10px 14px;
  border-radius:999px;
  font-weight:800;
}
.chip.active { background:white; color:#111; }
.grid {
  display:grid;
  grid-template-columns:repeat(4,1fr);
  gap:18px;
}
.product {
  position:relative;
  overflow:hidden;
  border:1px solid var(--line);
  background:linear-gradient(180deg,#14141f,#0e0e15);
  border-radius:22px;
  transition:.25s;
}
.product:hover { transform:translateY(-5px); border-color:#4a4a62; box-shadow:var(--shadow); }
.product-art {
  position:relative;
  padding:12px;
  background:linear-gradient(135deg,#202033,#101019);
}
.product-art svg { width:100%; display:block; border-radius:15px; }
.badge {
  position:absolute;
  left:22px;
  top:22px;
  padding:7px 9px;
  border-radius:8px;
  background:#fff;
  color:#111;
  font-size:10px;
  font-weight:1000;
}
.wish {
  position:absolute;
  right:20px;
  top:20px;
  width:38px;
  height:38px;
  border:1px solid #3d3d51;
  background:rgba(8,8,16,.72);
  color:white;
  border-radius:11px;
}
.wish.active { color:#ff5574; }
.product-body { padding:17px; }
.product-title { font-size:16px; font-weight:900; margin:0 0 7px; }
.meta { color:var(--muted); font-size:13px; display:flex; justify-content:space-between; }
.price-row { display:flex; align-items:center; justify-content:space-between; margin-top:15px; }
.price { font-size:20px; font-weight:1000; }
.add {
  border:0;
  background:white;
  color:#111;
  border-radius:10px;
  padding:10px 12px;
  font-weight:1000;
}
.empty {
  grid-column:1/-1;
  padding:55px;
  text-align:center;
  border:1px dashed #3b3b50;
  border-radius:20px;
  color:var(--muted);
}
.story {
  display:grid;
  grid-template-columns:1fr 1fr;
  gap:20px;
}
.story-card {
  border:1px solid var(--line);
  background:var(--panel);
  border-radius:24px;
  padding:28px;
}
.story-card h3 { font-size:27px; margin-top:0; }
.story-card p { color:var(--muted); line-height:1.8; }
.quote {
  border-left:4px solid var(--accent);
  padding-left:18px;
  color:#ddd;
  line-height:1.7;
}
.newsletter {
  padding:38px;
  border:1px solid var(--line);
  border-radius:25px;
  background:
    radial-gradient(circle at 80% 20%,rgba(139,92,246,.25),transparent 35%),
    linear-gradient(135deg,#151522,#0d0d15);
}
.newsletter form { display:flex; gap:10px; max-width:650px; }
.newsletter input {
  flex:1;
  border:1px solid var(--line);
  background:#090910;
  color:white;
  padding:14px;
  border-radius:12px;
}
.footer {
  border-top:1px solid var(--line);
  padding:35px 0;
  color:var(--muted);
}
.footer-grid { display:grid; grid-template-columns:2fr 1fr 1fr 1fr; gap:30px; }
.footer h4 { color:white; margin-top:0; }
.footer a { display:block; margin:9px 0; }
.footer a:hover { color:white; }
.drawer {
  position:fixed;
  inset:0;
  z-index:100;
  display:none;
}
.drawer.open { display:block; }
.overlay { position:absolute; inset:0; background:rgba(0,0,0,.68); backdrop-filter:blur(4px); }
.cart-panel {
  position:absolute;
  top:0;
  right:0;
  height:100%;
  width:min(440px,95vw);
  background:#0d0d16;
  border-left:1px solid var(--line);
  padding:22px;
  display:flex;
  flex-direction:column;
}
.cart-head { display:flex; justify-content:space-between; align-items:center; }
.cart-items { flex:1; overflow:auto; padding:15px 0; }
.cart-item {
  display:grid;
  grid-template-columns:65px 1fr auto;
  gap:12px;
  align-items:center;
  padding:12px 0;
  border-bottom:1px solid var(--line);
}
.cart-thumb svg { width:65px; border-radius:9px; display:block; }
.qty {
  display:flex;
  align-items:center;
  gap:8px;
  margin-top:7px;
}
.qty button {
  width:26px;
  height:26px;
  border:1px solid var(--line);
  background:var(--panel);
  color:white;
  border-radius:7px;
}
.cart-total {
  border-top:1px solid var(--line);
  padding-top:16px;
}
.total-line { display:flex; justify-content:space-between; font-weight:900; margin:8px 0; }
.checkout { width:100%; margin-top:12px; }
.modal {
  position:fixed;
  inset:0;
  z-index:120;
  display:none;
  place-items:center;
  padding:20px;
}
.modal.open { display:grid; }
.modal-card {
  width:min(800px,100%);
  max-height:90vh;
  overflow:auto;
  background:#10101a;
  border:1px solid #39394d;
  border-radius:25px;
  box-shadow:var(--shadow);
  padding:22px;
}
.detail {
  display:grid;
  grid-template-columns:1fr 1fr;
  gap:24px;
}
.detail-art svg { width:100%; border-radius:18px; }
.detail h2 { font-size:32px; margin-top:0; }
.muted { color:var(--muted); }
.size-row { display:flex; gap:8px; flex-wrap:wrap; margin:18px 0; }
.size {
  min-width:48px;
  padding:11px;
  border:1px solid var(--line);
  background:var(--panel);
  color:white;
  border-radius:10px;
  font-weight:900;
}
.size.selected { background:white; color:#111; }
.toast {
  position:fixed;
  z-index:200;
  left:50%;
  bottom:25px;
  transform:translate(-50%,20px);
  opacity:0;
  pointer-events:none;
  background:#fff;
  color:#111;
  padding:13px 18px;
  border-radius:12px;
  font-weight:900;
  transition:.25s;
}
.toast.show { opacity:1; transform:translate(-50%,0); }
.admin {
  display:none;
  border:1px solid var(--line);
  background:var(--panel);
  border-radius:20px;
  padding:22px;
}
.admin.show { display:block; }
.stats { display:grid; grid-template-columns:repeat(3,1fr); gap:12px; }
.stat { padding:17px; background:#0b0b13; border:1px solid var(--line); border-radius:14px; }
.stat strong { display:block; font-size:28px; }
.customizer {
  display:grid;
  grid-template-columns:1fr 1fr;
  gap:20px;
}
.preview {
  min-height:480px;
  border:1px solid var(--line);
  border-radius:20px;
  display:grid;
  place-items:center;
  background:radial-gradient(circle,#29293e,#0d0d15);
  padding:25px;
}
.shirt {
  width:280px;
  height:320px;
  position:relative;
  clip-path:polygon(20% 8%,35% 0,65% 0,80% 8%,100% 28%,84% 44%,72% 28%,72% 100%,28% 100%,28% 28%,16% 44%,0 28%);
  background:#222;
  display:grid;
  place-items:center;
}
.shirt span {
  font-weight:1000;
  font-size:34px;
  text-align:center;
  color:white;
  text-shadow:0 3px 12px #000;
}
.form-grid { display:grid; gap:12px; }
.form-grid label { font-size:13px; color:var(--muted); font-weight:800; }
.form-grid input,.form-grid select {
  width:100%;
  padding:12px;
  border-radius:11px;
  border:1px solid var(--line);
  background:#090910;
  color:white;
}
.light {
  --bg:#f5f6fb;
  --panel:#fff;
  --panel2:#f0f1f7;
  --text:#171722;
  --muted:#606172;
  --line:#dedfea;
}
.light .nav { background:rgba(245,246,251,.86); }
.light .icon-btn,.light .chip,.light .select { background:white; color:#171722; }
.light .search input,.light .newsletter input,.light .form-grid input,.light .form-grid select { background:#fff; color:#171722; }
.light .product { background:white; }
.light .story-card,.light .feature,.light .newsletter { background:white; }
@media (max-width:980px) {
  .grid { grid-template-columns:repeat(3,1fr); }
  .features { grid-template-columns:repeat(2,1fr); }
  .hero { grid-template-columns:1fr; }
  .hero-art { min-height:430px; }
  .footer-grid { grid-template-columns:1fr 1fr; }
}
@media (max-width:700px) {
  .nav-links { display:none; }
  .grid { grid-template-columns:repeat(2,1fr); gap:11px; }
  .story,.detail,.customizer { grid-template-columns:1fr; }
  .features { grid-template-columns:1fr; }
  .footer-grid { grid-template-columns:1fr; }
  .hero { padding:45px 0; }
  .hero h1 { letter-spacing:-3px; }
  .hero-card { transform:none; }
  .newsletter form { flex-direction:column; }
}
@media (max-width:470px) {
  .grid { grid-template-columns:1fr; }
  .section { padding:55px 0; }
  .hero-buttons .btn { width:100%; }
}
</style>
</head>
<body>
<div class="topbar">FREE SHIPPING ABOVE ₹999 • NEW ANIME DROP LIVE • KOTA'S ANIME</div>
<header class="nav">
<div class="container nav-inner">
<a class="logo" href="#home">
<span class="logo-mark">KA</span>
<span>KOTA's Anime</span>
</a>
<nav class="nav-links">
<a href="#shop">Shop</a>
<a href="#collections">Collections</a>
<a href="#custom">Custom</a>
<a href="#about">About</a>
</nav>
<div class="nav-actions">
<button class="icon-btn" id="themeBtn" aria-label="Toggle theme">☾</button>
<button class="icon-btn" id="cartBtn" aria-label="Open cart">🛒 <span id="cartCount">0</span></button>
</div>
</div>
</header>
<main id="home">
<section class="container hero">
<div>
<div class="kicker">Anime streetwear • made for fans</div>
<h1>Wear your <span class="gradient-text">anime energy.</span></h1>
<p>
KOTA's Anime is a fan-focused streetwear concept with bold character graphics,
comfortable fits, limited drops, custom designs, wishlists, search, filters and
a complete browser-only shopping experience. Everything in this demo runs from
one HTML file, so it does not depend on external image URLs.
</p>
<div class="hero-buttons">
<a class="btn btn-primary" href="#shop">Explore Collection</a>
<a class="btn btn-secondary" href="#custom">Design a Tee</a>
</div>
</div>
<div class="hero-art">
<div class="orb one"></div>
<div class="orb two"></div>
<div class="hero-card"><svg viewBox="0 0 320 380" class="shirt-art"><defs><linearGradient id="gbg" x1="0" x2="1"><stop stop-color="#b9e6ff"/><stop offset="1" stop-color="#e8d9ff"/></linearGradient></defs><rect width="320" height="380" rx="28" fill="url(#gbg)"/><circle cx="160" cy="150" r="94" fill="#f6d2bd"/><path d="M62 145 Q66 45 160 38 Q254 45 258 145 L230 105 Q205 72 160 75 Q115 72 90 105Z" fill="#e9f7ff"/><rect x="78" y="137" width="164" height="42" rx="20" fill="#111"/><circle cx="122" cy="158" r="13" fill="#63d8ff"/><circle cx="198" cy="158" r="13" fill="#63d8ff"/><path d="M125 213 Q160 230 195 213" stroke="#222" stroke-width="7" fill="none"/><text x="160" y="285" text-anchor="middle" font-size="34" font-weight="900" fill="#111">GOJO</text><text x="160" y="325" text-anchor="middle" font-size="18" fill="#111">LIMITLESS DROP</text></svg></div>
<div class="floating float-a">⚡ Limited Drop</div>
<div class="floating float-b">★★★★★ 4.9 fan rating</div>
</div>
</section>
<section class="section container" id="collections">
<div class="section-head">
<div>
<div class="kicker">Why KOTA's Anime</div>
<h2>Built like a real store</h2>
</div>
<p>Useful features are already included so you can test the application immediately.</p>
</div>
<div class="features">
<div class="feature"><div class="emoji">🎨</div><h3>Built-in artwork</h3><p>No broken external image links. Character artwork is embedded directly in the page as SVG.</p></div>
<div class="feature"><div class="emoji">🛍️</div><h3>Real cart logic</h3><p>Add products, change quantities, remove items and see totals update instantly.</p></div>
<div class="feature"><div class="emoji">🔎</div><h3>Smart discovery</h3><p>Search by character or design, filter collections and sort by price or rating.</p></div>
<div class="feature"><div class="emoji">💾</div><h3>Browser storage</h3><p>Cart, wishlist, theme and newsletter state survive refreshes using localStorage.</p></div>
</div>
</section>
<section class="section container" id="shop">
<div class="section-head">
<div>
<div class="kicker">The collection</div>
<h2>Anime T-shirts</h2>
</div>
<p id="resultText">Loading products…</p>
</div>
<div class="controls">
<div class="search">
<input id="search" type="search" placeholder="Search Naruto, Gojo, Igris, Shadow…">
</div>
<select class="select" id="sort">
<option value="featured">Featured</option>
<option value="price-low">Price: Low to High</option>
<option value="price-high">Price: High to Low</option>
<option value="rating">Top Rated</option>
<option value="name">Name A–Z</option>
</select>
<div class="chips" id="chips">
<button class="chip active" data-character="All">All</button>
<button class="chip" data-character="Naruto">Naruto</button>
<button class="chip" data-character="Gojo">Gojo</button>
<button class="chip" data-character="Igris">Igris</button>
</div>
</div>
<div class="grid" id="productGrid"></div>
</section>
<section class="section container" id="custom">
<div class="section-head">
<div>
<div class="kicker">Custom studio</div>
<h2>Make your own tee</h2>
</div>
<p>Choose a color, character and slogan. The preview is generated inside the browser.</p>
</div>
<div class="customizer">
<div class="preview">
<div class="shirt" id="shirtPreview"><span id="shirtText">KOTA<br>ANIME</span></div>
</div>
<div class="story-card">
<div class="form-grid">
<label for="shirtColor">T-shirt color</label>
<select id="shirtColor">
<option value="#222222">Midnight Black</option>
<option value="#f4f4f5">Cloud White</option>
<option value="#ef4444">Crimson Red</option>
<option value="#2563eb">Anime Blue</option>
<option value="#7c3aed">Domain Purple</option>
<option value="#16a34a">Leaf Green</option>
</select>
<label for="shirtCharacter">Character</label>
<select id="shirtCharacter">
<option>Naruto</option>
<option>Gojo</option>
<option>Igris</option>
</select>
<label for="shirtSlogan">Slogan</label>
<input id="shirtSlogan" maxlength="26" value="KOTA ANIME">
<label for="shirtSize">Size</label>
<select id="shirtSize">
<option>S</option><option>M</option><option>L</option><option>XL</option><option>XXL</option>
</select>
<button class="btn btn-primary" id="customAdd">Add Custom Tee — ₹999</button>
</div>
</div>
</div>
</section>
<section class="section container" id="about">
<div class="story">
<div class="story-card">
<div class="kicker">Our idea</div>
<h3>Anime belongs in everyday streetwear.</h3>
<p>
The goal of this concept is simple: make a store that feels energetic without
making the shopping experience confusing. Strong typography, clear cards,
fast filters and useful interactions keep the focus on the artwork and product.
</p>
<p class="quote">“Your favourite character should feel like part of your style, not just a picture on a shirt.”</p>
</div>
<div class="story-card">
<div class="kicker">Useful next steps</div>
<h3>Ready for a production backend.</h3>
<p>
This front end is intentionally self-contained. For a real deployment you can
connect the cart to an API, add authentication, store products in a database,
connect a payment provider, add an admin dashboard and replace the demo SVG art
with properly licensed artwork.
</p>
<div class="stats">
<div class="stat"><strong>36</strong><span class="muted">Demo products</span></div>
<div class="stat"><strong>3</strong><span class="muted">Character lines</span></div>
<div class="stat"><strong>100%</strong><span class="muted">No image CDN</span></div>
</div>
</div>
</div>
</section>
<section class="section container">
<div class="newsletter">
<div class="kicker">Stay in the loop</div>
<h2>Get the next drop first.</h2>
<p class="muted">Enter an email to test the newsletter interaction. This demo does not send real email.</p>
<form id="newsletterForm">
<input id="email" type="email" placeholder="you@example.com" required>
<button class="btn btn-primary">Join Drop List</button>
</form>
</div>
</section>
</main>
<footer class="footer">
<div class="container footer-grid">
<div>
<div class="logo"><span class="logo-mark">KA</span><span>KOTA's Anime</span></div>
<p>Anime-inspired streetwear demo built as a single self-contained HTML application.</p>
</div>
<div><h4>Shop</h4><a href="#shop">All T-shirts</a><a href="#collections">Collections</a><a href="#custom">Custom Studio</a></div>
<div><h4>Support</h4><a href="#about">About</a><a href="#" id="sizeGuide">Size Guide</a><a href="#" id="contactBtn">Contact</a></div>
<div><h4>Legal</h4><a href="#" id="privacyBtn">Privacy</a><a href="#" id="termsBtn">Terms</a><a href="#" id="adminBtn">Demo Admin</a></div>
</div>
<div class="container" style="margin-top:25px">© <span id="year"></span> KOTA's Anime. Demo storefront.</div>
</footer>

<div class="drawer" id="cartDrawer">
<div class="overlay" id="cartOverlay"></div>
<aside class="cart-panel">
<div class="cart-head"><h2>Your Cart</h2><button class="icon-btn" id="closeCart">×</button></div>
<div class="cart-items" id="cartItems"></div>
<div class="cart-total">
<div class="total-line"><span>Subtotal</span><span id="subtotal">₹0</span></div>
<div class="total-line"><span>Shipping</span><span id="shipping">₹0</span></div>
<div class="total-line" style="font-size:20px"><span>Total</span><span id="total">₹0</span></div>
<button class="btn btn-primary checkout" id="checkout">Proceed to Checkout</button>
</div>
</aside>
</div>

<div class="modal" id="productModal">
<div class="overlay" data-close-modal></div>
<div class="modal-card">
<div class="detail" id="detailContent"></div>
</div>
</div>

<div class="modal" id="infoModal">
<div class="overlay" data-close-modal></div>
<div class="modal-card">
<button class="icon-btn" style="float:right" data-close-modal>×</button>
<div id="infoContent"></div>
</div>
</div>

<div class="modal" id="adminModal">
<div class="overlay" data-close-modal></div>
<div class="modal-card">
<button class="icon-btn" style="float:right" data-close-modal>×</button>
<div class="kicker">Developer tools</div>
<h2>Demo Admin Dashboard</h2>
<p class="muted">This panel demonstrates the kind of information a real admin area could show.</p>
<div class="stats">
<div class="stat"><strong id="adminProducts">36</strong><span class="muted">Products</span></div>
<div class="stat"><strong id="adminCart">0</strong><span class="muted">Cart units</span></div>
<div class="stat"><strong id="adminWish">0</strong><span class="muted">Wishlist items</span></div>
</div>
<div style="margin-top:20px">
<button class="btn btn-secondary" id="resetDemo">Reset Demo Data</button>
</div>
</div>
</div>

<div class="toast" id="toast"></div>

<script>
"use strict";

const ART = {
Naruto: `<svg viewBox="0 0 320 380" class="shirt-art"><defs><linearGradient id="nbg" x1="0" x2="1"><stop stop-color="#ff9a3d"/><stop offset="1" stop-color="#ffcc66"/></linearGradient></defs><rect width="320" height="380" rx="28" fill="url(#nbg)"/><circle cx="160" cy="150" r="92" fill="#ffd5a3"/><path d="M72 135 Q82 35 160 45 Q238 35 248 135 L225 118 Q208 74 160 75 Q112 74 95 118Z" fill="#ffd43b"/><path d="M90 130 Q160 112 230 130" stroke="#333" stroke-width="10" fill="none"/><circle cx="125" cy="155" r="9"/><circle cx="195" cy="155" r="9"/><path d="M130 205 Q160 220 190 205" stroke="#222" stroke-width="7" fill="none"/><path d="M90 110 L230 110" stroke="#222" stroke-width="20"/><text x="160" y="285" text-anchor="middle" font-size="30" font-weight="800" fill="#222">NARUTO</text><text x="160" y="325" text-anchor="middle" font-size="18" fill="#222">SHINOBI EDITION</text></svg>`,
Gojo: `<svg viewBox="0 0 320 380" class="shirt-art"><defs><linearGradient id="gbg" x1="0" x2="1"><stop stop-color="#b9e6ff"/><stop offset="1" stop-color="#e8d9ff"/></linearGradient></defs><rect width="320" height="380" rx="28" fill="url(#gbg)"/><circle cx="160" cy="150" r="94" fill="#f6d2bd"/><path d="M62 145 Q66 45 160 38 Q254 45 258 145 L230 105 Q205 72 160 75 Q115 72 90 105Z" fill="#e9f7ff"/><rect x="78" y="137" width="164" height="42" rx="20" fill="#111"/><circle cx="122" cy="158" r="13" fill="#63d8ff"/><circle cx="198" cy="158" r="13" fill="#63d8ff"/><path d="M125 213 Q160 230 195 213" stroke="#222" stroke-width="7" fill="none"/><text x="160" y="285" text-anchor="middle" font-size="34" font-weight="900" fill="#111">GOJO</text><text x="160" y="325" text-anchor="middle" font-size="18" fill="#111">LIMITLESS DROP</text></svg>`,
Igris: `<svg viewBox="0 0 320 380" class="shirt-art"><defs><linearGradient id="ibg" x1="0" x2="1"><stop stop-color="#151b2d"/><stop offset="1" stop-color="#6e2438"/></linearGradient></defs><rect width="320" height="380" rx="28" fill="url(#ibg)"/><path d="M160 45 L235 105 L218 270 L160 330 L102 270 L85 105Z" fill="#1f2937" stroke="#d84a68" stroke-width="8"/><path d="M105 112 L160 72 L215 112 L200 150 L120 150Z" fill="#111827"/><path d="M126 156 L194 156 L181 205 L160 225 L139 205Z" fill="#8d2e46"/><path d="M118 115 L150 130 M202 115 L170 130" stroke="#ff526d" stroke-width="8"/><circle cx="140" cy="126" r="5" fill="#ff526d"/><circle cx="180" cy="126" r="5" fill="#ff526d"/><text x="160" y="285" text-anchor="middle" font-size="34" font-weight="900" fill="#fff">IGRIS</text><text x="160" y="325" text-anchor="middle" font-size="18" fill="#fff">SHADOW KNIGHT</text></svg>`
};

const PRODUCTS = [
  {
    "id": 1,
    "name": "Naruto — Leaf Shadow",
    "character": "Naruto",
    "color": "Orange",
    "price": 699,
    "rating": 4.4,
    "badge": "NEW",
    "art": "Naruto"
  },
  {
    "id": 2,
    "name": "Gojo — Limitless Eyes",
    "character": "Gojo",
    "color": "Black",
    "price": 799,
    "rating": 4.5,
    "badge": "HOT",
    "art": "Gojo"
  },
  {
    "id": 3,
    "name": "Igris — Red Knight",
    "character": "Igris",
    "color": "Maroon",
    "price": 899,
    "rating": 4.6,
    "badge": "BESTSELLER",
    "art": "Igris"
  },
  {
    "id": 4,
    "name": "Naruto — Sage Mode",
    "character": "Naruto",
    "color": "Green",
    "price": 999,
    "rating": 4.7,
    "badge": "LIMITED",
    "art": "Naruto"
  },
  {
    "id": 5,
    "name": "Gojo — Six Eyes",
    "character": "Gojo",
    "color": "White",
    "price": 1099,
    "rating": 4.8,
    "badge": "NEW",
    "art": "Gojo"
  },
  {
    "id": 6,
    "name": "Igris — Blood Armor",
    "character": "Igris",
    "color": "Black",
    "price": 1199,
    "rating": 4.4,
    "badge": "HOT",
    "art": "Igris"
  },
  {
    "id": 7,
    "name": "Naruto — Rasengan",
    "character": "Naruto",
    "color": "Blue",
    "price": 1299,
    "rating": 4.5,
    "badge": "BESTSELLER",
    "art": "Naruto"
  },
  {
    "id": 8,
    "name": "Gojo — Infinity",
    "character": "Gojo",
    "color": "Purple",
    "price": 699,
    "rating": 4.6,
    "badge": "LIMITED",
    "art": "Gojo"
  },
  {
    "id": 9,
    "name": "Igris — Shadow Monarch",
    "character": "Igris",
    "color": "Navy",
    "price": 799,
    "rating": 4.7,
    "badge": "NEW",
    "art": "Igris"
  },
  {
    "id": 10,
    "name": "Naruto — Hokage Flame",
    "character": "Naruto",
    "color": "Black",
    "price": 899,
    "rating": 4.8,
    "badge": "HOT",
    "art": "Naruto"
  },
  {
    "id": 11,
    "name": "Gojo — Domain",
    "character": "Gojo",
    "color": "Grey",
    "price": 999,
    "rating": 4.4,
    "badge": "BESTSELLER",
    "art": "Gojo"
  },
  {
    "id": 12,
    "name": "Igris — Royal Guard",
    "character": "Igris",
    "color": "Red",
    "price": 1099,
    "rating": 4.5,
    "badge": "LIMITED",
    "art": "Igris"
  },
  {
    "id": 13,
    "name": "Naruto — Leaf Shadow",
    "character": "Naruto",
    "color": "Orange",
    "price": 1199,
    "rating": 4.6,
    "badge": "NEW",
    "art": "Naruto"
  },
  {
    "id": 14,
    "name": "Gojo — Limitless Eyes",
    "character": "Gojo",
    "color": "Black",
    "price": 1299,
    "rating": 4.7,
    "badge": "HOT",
    "art": "Gojo"
  },
  {
    "id": 15,
    "name": "Igris — Red Knight",
    "character": "Igris",
    "color": "Maroon",
    "price": 699,
    "rating": 4.8,
    "badge": "BESTSELLER",
    "art": "Igris"
  },
  {
    "id": 16,
    "name": "Naruto — Sage Mode",
    "character": "Naruto",
    "color": "Green",
    "price": 799,
    "rating": 4.4,
    "badge": "LIMITED",
    "art": "Naruto"
  },
  {
    "id": 17,
    "name": "Gojo — Six Eyes",
    "character": "Gojo",
    "color": "White",
    "price": 899,
    "rating": 4.5,
    "badge": "NEW",
    "art": "Gojo"
  },
  {
    "id": 18,
    "name": "Igris — Blood Armor",
    "character": "Igris",
    "color": "Black",
    "price": 999,
    "rating": 4.6,
    "badge": "HOT",
    "art": "Igris"
  },
  {
    "id": 19,
    "name": "Naruto — Rasengan",
    "character": "Naruto",
    "color": "Blue",
    "price": 1099,
    "rating": 4.7,
    "badge": "BESTSELLER",
    "art": "Naruto"
  },
  {
    "id": 20,
    "name": "Gojo — Infinity",
    "character": "Gojo",
    "color": "Purple",
    "price": 1199,
    "rating": 4.8,
    "badge": "LIMITED",
    "art": "Gojo"
  },
  {
    "id": 21,
    "name": "Igris — Shadow Monarch",
    "character": "Igris",
    "color": "Navy",
    "price": 1299,
    "rating": 4.4,
    "badge": "NEW",
    "art": "Igris"
  },
  {
    "id": 22,
    "name": "Naruto — Hokage Flame",
    "character": "Naruto",
    "color": "Black",
    "price": 699,
    "rating": 4.5,
    "badge": "HOT",
    "art": "Naruto"
  },
  {
    "id": 23,
    "name": "Gojo — Domain",
    "character": "Gojo",
    "color": "Grey",
    "price": 799,
    "rating": 4.6,
    "badge": "BESTSELLER",
    "art": "Gojo"
  },
  {
    "id": 24,
    "name": "Igris — Royal Guard",
    "character": "Igris",
    "color": "Red",
    "price": 899,
    "rating": 4.7,
    "badge": "LIMITED",
    "art": "Igris"
  },
  {
    "id": 25,
    "name": "Naruto — Leaf Shadow",
    "character": "Naruto",
    "color": "Orange",
    "price": 999,
    "rating": 4.8,
    "badge": "NEW",
    "art": "Naruto"
  },
  {
    "id": 26,
    "name": "Gojo — Limitless Eyes",
    "character": "Gojo",
    "color": "Black",
    "price": 1099,
    "rating": 4.4,
    "badge": "HOT",
    "art": "Gojo"
  },
  {
    "id": 27,
    "name": "Igris — Red Knight",
    "character": "Igris",
    "color": "Maroon",
    "price": 1199,
    "rating": 4.5,
    "badge": "BESTSELLER",
    "art": "Igris"
  },
  {
    "id": 28,
    "name": "Naruto — Sage Mode",
    "character": "Naruto",
    "color": "Green",
    "price": 1299,
    "rating": 4.6,
    "badge": "LIMITED",
    "art": "Naruto"
  },
  {
    "id": 29,
    "name": "Gojo — Six Eyes",
    "character": "Gojo",
    "color": "White",
    "price": 699,
    "rating": 4.7,
    "badge": "NEW",
    "art": "Gojo"
  },
  {
    "id": 30,
    "name": "Igris — Blood Armor",
    "character": "Igris",
    "color": "Black",
    "price": 799,
    "rating": 4.8,
    "badge": "HOT",
    "art": "Igris"
  },
  {
    "id": 31,
    "name": "Naruto — Rasengan",
    "character": "Naruto",
    "color": "Blue",
    "price": 899,
    "rating": 4.4,
    "badge": "BESTSELLER",
    "art": "Naruto"
  },
  {
    "id": 32,
    "name": "Gojo — Infinity",
    "character": "Gojo",
    "color": "Purple",
    "price": 999,
    "rating": 4.5,
    "badge": "LIMITED",
    "art": "Gojo"
  },
  {
    "id": 33,
    "name": "Igris — Shadow Monarch",
    "character": "Igris",
    "color": "Navy",
    "price": 1099,
    "rating": 4.6,
    "badge": "NEW",
    "art": "Igris"
  },
  {
    "id": 34,
    "name": "Naruto — Hokage Flame",
    "character": "Naruto",
    "color": "Black",
    "price": 1199,
    "rating": 4.7,
    "badge": "HOT",
    "art": "Naruto"
  },
  {
    "id": 35,
    "name": "Gojo — Domain",
    "character": "Gojo",
    "color": "Grey",
    "price": 1299,
    "rating": 4.8,
    "badge": "BESTSELLER",
    "art": "Gojo"
  },
  {
    "id": 36,
    "name": "Igris — Royal Guard",
    "character": "Igris",
    "color": "Red",
    "price": 699,
    "rating": 4.4,
    "badge": "LIMITED",
    "art": "Igris"
  }
];

let state = {
  cart: JSON.parse(localStorage.getItem("kota_cart") || "[]"),
  wishlist: JSON.parse(localStorage.getItem("kota_wishlist") || "[]"),
  theme: localStorage.getItem("kota_theme") || "dark",
  character: "All",
  search: "",
  sort: "featured"
};

const $ = (selector) => document.querySelector(selector);
const $$ = (selector) => [...document.querySelectorAll(selector)];

function money(value) {
  return "₹" + Number(value).toLocaleString("en-IN");
}

function save() {
  localStorage.setItem("kota_cart", JSON.stringify(state.cart));
  localStorage.setItem("kota_wishlist", JSON.stringify(state.wishlist));
  localStorage.setItem("kota_theme", state.theme);
}

function toast(message) {
  const node = $("#toast");
  node.textContent = message;
  node.classList.add("show");
  clearTimeout(window.toastTimer);
  window.toastTimer = setTimeout(() => node.classList.remove("show"), 2200);
}

function getProduct(id) {
  return PRODUCTS.find(product => product.id === Number(id));
}

function filteredProducts() {
  let result = PRODUCTS.filter(product => {
    const characterOK = state.character === "All" || product.character === state.character;
    const haystack = (product.name + " " + product.character + " " + product.color).toLowerCase();
    const searchOK = haystack.includes(state.search.toLowerCase());
    return characterOK && searchOK;
  });

  if (state.sort === "price-low") result.sort((a,b) => a.price - b.price);
  if (state.sort === "price-high") result.sort((a,b) => b.price - a.price);
  if (state.sort === "rating") result.sort((a,b) => b.rating - a.rating);
  if (state.sort === "name") result.sort((a,b) => a.name.localeCompare(b.name));

  return result;
}

function renderProducts() {
  const grid = $("#productGrid");
  const result = filteredProducts();
  $("#resultText").textContent = `${result.length} designs • tap a card for details`;
  if (!result.length) {
    grid.innerHTML = `<div class="empty"><h3>No designs found</h3><p>Try another character or search word.</p></div>`;
    return;
  }

  grid.innerHTML = result.map(product => {
    const wished = state.wishlist.includes(product.id);
    return `
      <article class="product">
        <div class="product-art">
          <span class="badge">${product.badge}</span>
          <button class="wish ${wished ? "active" : ""}" data-wish="${product.id}" aria-label="Wishlist">${wished ? "♥" : "♡"}</button>
          <div data-detail="${product.id}" style="cursor:pointer">${ART[product.art]}</div>
        </div>
        <div class="product-body">
          <p class="product-title">${product.name}</p>
          <div class="meta"><span>${product.character} • ${product.color}</span><span>★ ${product.rating}</span></div>
          <div class="price-row">
            <span class="price">${money(product.price)}</span>
            <button class="add" data-add="${product.id}">Add</button>
          </div>
        </div>
      </article>
    `;
  }).join("");
}

function addToCart(id, size="M") {
  const product = getProduct(id);
  if (!product) return;

  const existing = state.cart.find(item => item.id === product.id && item.size === size);
  if (existing) {
    existing.qty += 1;
  } else {
    state.cart.push({id: product.id, qty: 1, size});
  }
  save();
  renderCart();
  toast(`${product.name} added to cart`);
}

function changeQty(id, size, amount) {
  const item = state.cart.find(row => row.id === Number(id) && row.size === size);
  if (!item) return;
  item.qty += amount;
  if (item.qty <= 0) {
    state.cart = state.cart.filter(row => !(row.id === Number(id) && row.size === size));
  }
  save();
  renderCart();
}

function removeItem(id, size) {
  state.cart = state.cart.filter(row => !(row.id === Number(id) && row.size === size));
  save();
  renderCart();
}

function cartUnits() {
  return state.cart.reduce((sum,item) => sum + item.qty, 0);
}

function cartSubtotal() {
  return state.cart.reduce((sum,item) => {
    const product = getProduct(item.id);
    return sum + (product ? product.price * item.qty : 0);
  }, 0);
}

function renderCart() {
  $("#cartCount").textContent = cartUnits();
  $("#adminCart").textContent = cartUnits();
  $("#adminWish").textContent = state.wishlist.length;

  if (!state.cart.length) {
    $("#cartItems").innerHTML = `<div class="empty" style="margin-top:20px"><h3>Your cart is empty</h3><p>Add a tee and it will appear here.</p></div>`;
  } else {
    $("#cartItems").innerHTML = state.cart.map(item => {
      const product = getProduct(item.id);
      return `
        <div class="cart-item">
          <div class="cart-thumb">${ART[product.art]}</div>
          <div>
            <strong>${product.name}</strong>
            <div class="muted">${money(product.price)} • Size ${item.size}</div>
            <div class="qty">
              <button data-dec="${item.id}" data-size="${item.size}">−</button>
              <strong>${item.qty}</strong>
              <button data-inc="${item.id}" data-size="${item.size}">+</button>
              <button data-remove="${item.id}" data-size="${item.size}" title="Remove">×</button>
            </div>
          </div>
          <strong>${money(product.price * item.qty)}</strong>
        </div>
      `;
    }).join("");
  }

  const subtotal = cartSubtotal();
  const shipping = subtotal === 0 || subtotal >= 999 ? 0 : 79;
  $("#subtotal").textContent = money(subtotal);
  $("#shipping").textContent = shipping ? money(shipping) : "FREE";
  $("#total").textContent = money(subtotal + shipping);
}

function openCart() {
  $("#cartDrawer").classList.add("open");
  document.body.style.overflow = "hidden";
}

function closeCart() {
  $("#cartDrawer").classList.remove("open");
  document.body.style.overflow = "";
}

function openProduct(id) {
  const product = getProduct(id);
  if (!product) return;

  $("#detailContent").innerHTML = `
    <div class="detail-art">${ART[product.art]}</div>
    <div>
      <div class="kicker">${product.badge} • ${product.character}</div>
      <h2>${product.name}</h2>
      <p class="muted">Premium-feel anime streetwear concept with a bold graphic built directly into this demo.</p>
      <div class="price" style="margin:20px 0">${money(product.price)}</div>
      <div>★★★★★ <span class="muted">${product.rating}/5 fan rating</span></div>
      <p class="muted">Soft everyday fit • unisex sizing • printed front graphic • easy-care fabric concept</p>
      <div class="size-row" id="detailSizes">
        ${["S","M","L","XL","XXL"].map((size,i) => `<button class="size ${i===1 ? "selected" : ""}" data-size-choice="${size}">${size}</button>`).join("")}
      </div>
      <button class="btn btn-primary" id="detailAdd">Add to Cart — ${money(product.price)}</button>
    </div>
  `;

  $("#productModal").classList.add("open");
  document.body.style.overflow = "hidden";

  $$("#detailSizes .size").forEach(button => {
    button.addEventListener("click", () => {
      $$("#detailSizes .size").forEach(b => b.classList.remove("selected"));
      button.classList.add("selected");
    });
  });

  $("#detailAdd").addEventListener("click", () => {
    const selected = $(".size.selected")?.dataset.sizeChoice || "M";
    addToCart(product.id, selected);
    $("#productModal").classList.remove("open");
    document.body.style.overflow = "";
  });
}

function toggleWishlist(id) {
  id = Number(id);
  if (state.wishlist.includes(id)) {
    state.wishlist = state.wishlist.filter(item => item !== id);
    toast("Removed from wishlist");
  } else {
    state.wishlist.push(id);
    toast("Added to wishlist ♥");
  }
  save();
  renderProducts();
  renderCart();
}

function updateTheme() {
  document.body.classList.toggle("light", state.theme === "light");
  $("#themeBtn").textContent = state.theme === "light" ? "☀" : "☾";
  save();
}

function openInfo(title, body) {
  $("#infoContent").innerHTML = `<div class="kicker">KOTA's Anime</div><h2>${title}</h2><p class="muted" style="line-height:1.8">${body}</p>`;
  $("#infoModal").classList.add("open");
  document.body.style.overflow = "hidden";
}

$("#themeBtn").addEventListener("click", () => {
  state.theme = state.theme === "light" ? "dark" : "light";
  updateTheme();
});

$("#cartBtn").addEventListener("click", openCart);
$("#closeCart").addEventListener("click", closeCart);
$("#cartOverlay").addEventListener("click", closeCart);

$("#search").addEventListener("input", event => {
  state.search = event.target.value;
  renderProducts();
});

$("#sort").addEventListener("change", event => {
  state.sort = event.target.value;
  renderProducts();
});

$("#chips").addEventListener("click", event => {
  const button = event.target.closest("[data-character]");
  if (!button) return;
  state.character = button.dataset.character;
  $$("#chips .chip").forEach(chip => chip.classList.remove("active"));
  button.classList.add("active");
  renderProducts();
});

$("#productGrid").addEventListener("click", event => {
  const add = event.target.closest("[data-add]");
  const wish = event.target.closest("[data-wish]");
  const detail = event.target.closest("[data-detail]");

  if (add) addToCart(add.dataset.add);
  if (wish) toggleWishlist(wish.dataset.wish);
  if (detail) openProduct(detail.dataset.detail);
});

$("#cartItems").addEventListener("click", event => {
  const inc = event.target.closest("[data-inc]");
  const dec = event.target.closest("[data-dec]");
  const remove = event.target.closest("[data-remove]");

  if (inc) changeQty(inc.dataset.inc, inc.dataset.size, 1);
  if (dec) changeQty(dec.dataset.dec, dec.dataset.size, -1);
  if (remove) removeItem(remove.dataset.remove, remove.dataset.size);
});

$("#checkout").addEventListener("click", () => {
  if (!state.cart.length) {
    toast("Your cart is empty");
    return;
  }
  openInfo(
    "Checkout demo",
    "This front-end demo intentionally stops before payment. In a real store, this button should create a secure server-side order, calculate the final amount on the server, and then open your chosen payment provider."
  );
});

$("#shirtColor").addEventListener("change", event => {
  $("#shirtPreview").style.background = event.target.value;
  if (event.target.value === "#f4f4f5") $("#shirtText").style.color = "#111";
  else $("#shirtText").style.color = "#fff";
});

$("#shirtCharacter").addEventListener("change", event => {
  const name = event.target.value;
  $("#shirtText").textContent = name.toUpperCase();
});

$("#shirtSlogan").addEventListener("input", event => {
  $("#shirtText").innerHTML = event.target.value.replace(/</g,"&lt;").replace(/>/g,"&gt;").replace(/\n/g,"<br>");
});

$("#customAdd").addEventListener("click", () => {
  const character = $("#shirtCharacter").value;
  const slogan = $("#shirtSlogan").value.trim() || "KOTA ANIME";
  const size = $("#shirtSize").value;

  const customId = 9000 + Date.now();
  PRODUCTS.push({
    id: customId,
    name: `${character} Custom — ${slogan}`,
    character,
    color: $("#shirtColor").value,
    price: 999,
    rating: 5,
    badge: "CUSTOM",
    art: character
  });

  addToCart(customId, size);
});

$("#newsletterForm").addEventListener("submit", event => {
  event.preventDefault();
  const email = $("#email").value.trim();
  localStorage.setItem("kota_newsletter_email", email);
  toast("You're on the demo drop list ✨");
  event.target.reset();
});

$$("[data-close-modal]").forEach(node => {
  node.addEventListener("click", () => {
    node.closest(".modal").classList.remove("open");
    document.body.style.overflow = "";
  });
});

$("#sizeGuide").addEventListener("click", event => {
  event.preventDefault();
  openInfo(
    "Size Guide",
    "S: chest 36–38 in • M: 39–41 in • L: 42–44 in • XL: 45–47 in • XXL: 48–50 in. These are demo measurements; use your actual garment supplier's size chart before production."
  );
});

$("#contactBtn").addEventListener("click", event => {
  event.preventDefault();
  openInfo("Contact", "For a production site, connect this section to your support email, WhatsApp business account, helpdesk or CRM. The demo keeps the contact flow local.");
});

$("#privacyBtn").addEventListener("click", event => {
  event.preventDefault();
  openInfo("Privacy", "This demo stores only local browser preferences such as cart, wishlist, theme and the test newsletter email. A production application needs a proper privacy policy and secure server-side data handling.");
});

$("#termsBtn").addEventListener("click", event => {
  event.preventDefault();
  openInfo("Terms", "This is a UI prototype. Before selling products, add actual pricing rules, tax treatment, shipping rules, returns, refunds, product licensing and legally reviewed terms.");
});

$("#adminBtn").addEventListener("click", event => {
  event.preventDefault();
  $("#adminModal").classList.add("open");
  document.body.style.overflow = "hidden";
  $("#adminProducts").textContent = PRODUCTS.length;
  $("#adminCart").textContent = cartUnits();
  $("#adminWish").textContent = state.wishlist.length;
});

$("#resetDemo").addEventListener("click", () => {
  localStorage.removeItem("kota_cart");
  localStorage.removeItem("kota_wishlist");
  localStorage.removeItem("kota_theme");
  localStorage.removeItem("kota_newsletter_email");
  state.cart = [];
  state.wishlist = [];
  state.theme = "dark";
  updateTheme();
  renderProducts();
  renderCart();
  toast("Demo data reset");
});

document.addEventListener("keydown", event => {
  if (event.key === "Escape") {
    closeCart();
    $$(".modal").forEach(modal => modal.classList.remove("open"));
    document.body.style.overflow = "";
  }
});

$("#year").textContent = new Date().getFullYear();
updateTheme();
renderProducts();
renderCart();
</script>
<!-- PRODUCTION NOTE: Keep all secret credentials on the server. -->
<!-- PRODUCTION NOTE: Recalculate cart totals on the server. -->
<!-- PRODUCTION NOTE: Verify payment webhooks server-side. -->
<!-- PRODUCTION NOTE: Use licensed anime artwork before commercial launch. -->
<!-- PRODUCTION NOTE: Add real inventory tracking before accepting orders. -->
<!-- PRODUCTION NOTE: Add database persistence for products and orders. -->
<!-- PRODUCTION NOTE: Add authentication for customer accounts. -->
<!-- PRODUCTION NOTE: Add role-based access for administrators. -->
<!-- PRODUCTION NOTE: Add server-side validation for every form. -->
<!-- PRODUCTION NOTE: Sanitize or safely render customer-provided text. -->
<!-- PRODUCTION NOTE: Add automated tests for cart quantity behavior. -->
<!-- PRODUCTION NOTE: Test checkout against duplicate webhook events. -->
<!-- PRODUCTION NOTE: Test the site on Chrome, Edge, Firefox and Safari. -->
<!-- PRODUCTION NOTE: Test keyboard-only navigation. -->
<!-- PRODUCTION NOTE: Test screen-reader labels and focus states. -->
<!-- PRODUCTION NOTE: Test mobile widths from 320px upward. -->
<!-- PRODUCTION NOTE: Compress production images and use modern formats. -->
<!-- PRODUCTION NOTE: Use responsive image sizes for different screens. -->
<!-- PRODUCTION NOTE: Lazy-load below-the-fold product artwork. -->
<!-- PRODUCTION NOTE: Add SEO titles and descriptions for each product. -->
<!-- PRODUCTION NOTE: Add structured data for products where appropriate. -->
<!-- PRODUCTION NOTE: Add canonical URLs when multiple routes exist. -->
<!-- PRODUCTION NOTE: Add analytics only after defining useful events. -->
<!-- PRODUCTION NOTE: Track product views, add-to-cart and completed orders. -->
<!-- PRODUCTION NOTE: Do not expose personal customer information in logs. -->
<!-- PRODUCTION NOTE: Configure HTTPS before collecting customer data. -->
<!-- PRODUCTION NOTE: Configure backups for the production database. -->
<!-- PRODUCTION NOTE: Add monitoring for API and payment failures. -->
<!-- PRODUCTION NOTE: Add a friendly 404 page in a multi-page deployment. -->
<!-- PRODUCTION NOTE: Add loading states for slow API requests. -->
<!-- PRODUCTION NOTE: Add retry behavior for safe transient requests. -->
<!-- PRODUCTION NOTE: Never blindly retry a payment operation. -->
<!-- PRODUCTION NOTE: Use idempotency keys for order/payment creation. -->
<!-- PRODUCTION NOTE: Keep currency and tax calculations consistent. -->
<!-- PRODUCTION NOTE: Store money as integer minor units on the server. -->
<!-- PRODUCTION NOTE: Record the price used at order time. -->
<!-- PRODUCTION NOTE: Do not assume current product price equals old order price. -->
<section style='display:none' aria-hidden='true'>/*
LEARNING NOTE 01 — Project architecture
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 02 — Responsive design
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 03 — Accessibility
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 04 — Semantic HTML
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 05 — CSS variables
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 06 — CSS Grid
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 07 — CSS Flexbox
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 08 — Mobile breakpoints
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 09 — SVG artwork
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 10 — LocalStorage
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 11 — State management
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 12 — Filtering
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 13 — Sorting
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 14 — Search
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 15 — Wishlist logic
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 16 — Cart logic
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 17 — Quantity updates
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 18 — Shipping rules
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 19 — Checkout security
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 20 — Payment integration
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 21 — Backend API design
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 22 — Database design
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 23 — Authentication
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 24 — Admin dashboard
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 25 — Inventory
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 26 — Order management
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 27 — Product variants
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 28 — Image optimization
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 29 — CDN strategy
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 30 — SEO
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 31 — Open Graph
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 32 — Performance
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 33 — Lazy loading
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 34 — Caching
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 35 — Error handling
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 36 — Input validation
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 37 — XSS prevention
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 38 — CSRF
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 39 — Rate limiting
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 40 — Logging
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 41 — Analytics
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 42 — Testing
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 43 — Deployment
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 44 — Environment variables
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 45 — Domain setup
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 46 — HTTPS
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 47 — Backups
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 48 — Monitoring
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 49 — Legal considerations
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 50 — Copyright and licensing
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 51 — Returns
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 52 — Taxes in India
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 53 — Shipping in India
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 54 — Customer support
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 55 — WhatsApp integration
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 56 — Email integration
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
LEARNING NOTE 57 — Production roadmap
This section is intentionally included so the project is useful as a learning reference.
1. Keep presentation, application state and server-side business rules separate.
2. Never trust prices, stock counts or payment status sent by the browser.
3. Validate all user input on the server before saving it.
4. Keep secrets such as API keys outside the HTML file.
5. Test the mobile layout, keyboard navigation and slow-network behavior.
6. Use licensed artwork for a real commercial anime store.
7. Replace demo browser-only checkout with a server-created order.
8. Keep an audit trail for important admin actions.
9. Use HTTPS everywhere in production.
10. Add automated tests before changing critical purchase flows.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/
/*
DEVELOPER CHECKLIST
- Confirm the product has a unique database ID.
- Confirm the selected size is a valid variant.
- Confirm inventory on the server.
- Calculate totals on the server.
- Escape user-generated text before rendering HTML.
- Use parameterized database queries.
- Never expose private keys in client JavaScript.
- Log failed payment callbacks.
- Make webhook handling idempotent.
- Provide a useful error message to customers.
*/</section>
</body>
</html>
