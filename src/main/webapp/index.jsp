<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KOTA'S ANIME</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{font-family:Arial,sans-serif;background:#080812;color:#fff}
a{text-decoration:none;color:inherit}
button{cursor:pointer;border:0}
.container{width:92%;max-width:1250px;margin:auto}
header{position:sticky;top:0;z-index:20;background:#080812ee;backdrop-filter:blur(15px);border-bottom:1px solid #ffffff18}
.nav{height:72px;display:flex;align-items:center;justify-content:space-between}
.logo{font-size:22px;font-weight:900}.logo b{color:#ff2994}
nav{display:flex;gap:20px}nav a{font-size:12px;font-weight:800;color:#aaaabd}nav a:hover{color:#fff}
.icons{display:flex;gap:8px}.icon{width:40px;height:40px;border-radius:50%;background:#ffffff0d;color:#fff;border:1px solid #ffffff16}
.hero{padding:25px 0}.heroBox{min-height:560px;border-radius:32px;display:flex;align-items:center;overflow:hidden;position:relative;background:radial-gradient(circle at 80% 45%,#54205f,#17132c 30%,#090914 65%);border:1px solid #ffffff14}
.heroBox:after{content:"";position:absolute;width:430px;height:430px;right:-100px;top:-100px;border-radius:50%;background:linear-gradient(135deg,#ff2994,#835cf5,#20d9ff);filter:blur(90px);opacity:.3}
.heroText{position:relative;z-index:2;padding:65px;max-width:760px}
.pill{display:inline-block;padding:9px 14px;border-radius:99px;background:#ff29941a;border:1px solid #ff299455;color:#ff9bca;font-size:10px;font-weight:900}
h1{font-size:clamp(55px,8vw,100px);line-height:.88;letter-spacing:-6px;margin:22px 0}
.gradient{background:linear-gradient(90deg,#ff2994,#835cf5,#20d9ff);background-clip:text;-webkit-background-clip:text;color:transparent}
.heroText p{color:#c0c0cf;line-height:1.8;font-size:14px;max-width:610px;margin-bottom:25px}
.btn{display:inline-block;padding:14px 19px;border-radius:13px;font-size:11px;font-weight:900}
.primary{background:linear-gradient(100deg,#ff2994,#835cf5)}.secondary{margin-left:7px;background:#ffffff0c;border:1px solid #ffffff16}
section{padding:65px 0}.title{margin-bottom:25px}.title h2{font-size:35px;letter-spacing:-2px}.title p{color:#9999b0;font-size:12px;margin-top:6px}
.animeGrid{display:grid;grid-template-columns:repeat(6,1fr);gap:12px}
.anime{background:#111122;border:1px solid #ffffff10;border-radius:20px;padding:14px;transition:.2s}
.anime:hover{transform:translateY(-6px);border-color:#ff2994}
.mini{height:120px;border-radius:14px;background:#080812;overflow:hidden;margin-bottom:12px}.mini svg{width:100%;height:100%}
.anime h3{font-size:13px}.anime p{font-size:9px;color:#9999b0;margin-top:5px}
.filters{display:flex;gap:8px;flex-wrap:wrap;margin-bottom:22px}.filter{padding:10px 15px;border-radius:99px;background:#111122;border:1px solid #ffffff12;color:#aaaabd;font-size:10px;font-weight:900}.filter.active,.filter:hover{color:#fff;background:linear-gradient(100deg,#ff2994,#835cf5)}
.products{display:grid;grid-template-columns:repeat(3,1fr);gap:18px}
.product{background:#111122;border:1px solid #ffffff10;border-radius:24px;overflow:hidden;transition:.25s}.product:hover{transform:translateY(-7px);box-shadow:0 25px 70px #0008}
.product.hide{display:none}
.visual{height:390px;position:relative;display:grid;place-items:center;background:radial-gradient(circle,#29294c,#0e0e1d)}
.badge{position:absolute;left:13px;top:13px;z-index:5;background:#c8ff35;color:#111;padding:6px 9px;border-radius:99px;font-size:8px;font-weight:900}
.wish{position:absolute;right:13px;top:13px;z-index:5;width:38px;height:38px;border-radius:50%;background:#0009;color:#fff;border:1px solid #ffffff22}.wish.liked{background:#ff2994}
.shirt{width:245px;height:310px;position:relative;background:linear-gradient(145deg,#292941,#08080e);clip-path:polygon(24% 5%,38% 0,50% 8%,62% 0,76% 5%,100% 22%,83% 43%,74% 29%,74% 100%,26% 100%,26% 29%,17% 43%,0 22%);filter:drop-shadow(0 25px 30px #0009)}
.neck{position:absolute;z-index:3;left:calc(50% - 28px);top:7px;width:56px;height:29px;background:#07070c;border-radius:0 0 30px 30px}
.art{position:absolute;z-index:4;left:50%;top:58px;transform:translateX(-50%);width:138px;height:158px;border-radius:13px;overflow:hidden;border:2px solid #ffffff33;background:#080812}
.art svg{width:100%;height:100%}.art label{position:absolute;bottom:6px;left:6px;background:#000c;padding:3px 5px;border-radius:4px;font-size:7px;font-weight:900}
.brand{position:absolute;z-index:5;left:50%;bottom:27px;transform:translateX(-50%);font-size:7px;letter-spacing:1px;font-weight:900;text-align:center}
.caption{position:absolute;bottom:12px;left:50%;transform:translateX(-50%);white-space:nowrap;background:#000b;padding:5px 8px;border-radius:99px;font-size:7px;color:#ddd}
.info{padding:17px}.animeName{color:#20d9ff;font-size:9px;font-weight:900}.info h3{font-size:16px;margin:7px 0}.info p{font-size:10px;color:#9999b0;line-height:1.6;min-height:32px}.stars{color:#ffe45c;font-size:10px;margin-top:10px}.stars span{color:#8888a0;margin-left:5px}.buy{display:flex;justify-content:space-between;align-items:center;margin-top:14px}.price{font-size:19px;font-weight:900}.add{padding:9px 12px;border-radius:10px;background:linear-gradient(100deg,#835cf5,#ff2994);color:#fff;font-size:9px;font-weight:900}
.feature{display:grid;grid-template-columns:1fr 1fr;border:1px solid #ffffff12;border-radius:30px;overflow:hidden;background:linear-gradient(135deg,#211033,#0d1828)}
.featureArt{min-height:450px;display:grid;place-items:center;background:radial-gradient(circle,#29294d,#090914)}.featureArt svg{width:300px;height:380px}
.featureText{padding:55px;display:flex;flex-direction:column;justify-content:center}.featureText small{color:#ff2994;font-size:9px;font-weight:900;letter-spacing:2px}.featureText h2{font-size:45px;line-height:.95;margin:12px 0}.featureText p{color:#aaaabd;font-size:12px;line-height:1.8;margin-bottom:22px}
.styles{display:grid;grid-template-columns:repeat(3,1fr);gap:15px}.style{padding:27px;border:1px solid #ffffff10;border-radius:22px;background:#111122}.style div{font-size:35px;margin-bottom:15px}.style h3{font-size:16px;margin-bottom:8px}.style p{font-size:10px;color:#9999b0;line-height:1.7}
.news{padding:50px 20px;text-align:center;background:#111122;border:1px solid #ffffff10;border-radius:28px}.news h2{font-size:35px}.news p{color:#9999b0;font-size:11px;margin:8px 0 20px}.email{display:flex;max-width:500px;margin:auto;gap:7px}.email input{flex:1;padding:14px;border-radius:12px;background:#07070e;border:1px solid #ffffff15;color:#fff}.email button{padding:14px 18px;border-radius:12px;background:linear-gradient(100deg,#ff2994,#835cf5);color:#fff;font-size:10px;font-weight:900}
footer{padding:45px 0;border-top:1px solid #ffffff10}footer p,footer a{font-size:10px;color:#9999b0;line-height:2}.footerGrid{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:25px}.footerGrid h4{font-size:10px;margin-bottom:10px}.copy{text-align:center;border-top:1px solid #ffffff10;margin-top:30px;padding-top:20px;color:#66667a;font-size:9px}
.cart{position:fixed;right:20px;bottom:20px;z-index:20;padding:14px 18px;border-radius:99px;background:linear-gradient(100deg,#ff2994,#835cf5);font-size:10px;font-weight:900}.toast{position:fixed;z-index:30;left:50%;bottom:20px;transform:translate(-50%,120px);background:#fff;color:#111;padding:12px 18px;border-radius:99px;font-size:10px;font-weight:900;transition:.25s}.toast.show{transform:translate(-50%,0)}
@media(max-width:1000px){.animeGrid{grid-template-columns:repeat(3,1fr)}.products{grid-template-columns:repeat(2,1fr)}.footerGrid{grid-template-columns:1fr 1fr}}
@media(max-width:750px){nav{display:none}.heroText{padding:40px}.feature{grid-template-columns:1fr}.styles{grid-template-columns:1fr}}
@media(max-width:520px){.heroText{padding:28px}h1{font-size:50px}.animeGrid{grid-template-columns:repeat(2,1fr)}.products{grid-template-columns:1fr}.footerGrid{grid-template-columns:1fr}.email{flex-direction:column}}
</style>
</head>

<body>
<header>
<div class="container nav">
<a class="logo" href="#home">KOTA'S <b>ANIME</b></a>
<nav>
<a href="#home">HOME</a><a href="#anime">ANIME</a><a href="#shop">SHOP</a><a href="#featured">FEATURED</a><a href="#styles">STYLES</a>
</nav>
<div class="icons"><button class="icon" onclick="searchProducts()">⌕</button><button class="icon" onclick="showToast('Wishlist ready ♡')">♡</button><button class="icon" onclick="showToast('Menu opened')">☰</button></div>
</div>
</header>

<main id="home">

<section class="hero">
<div class="container">
<div class="heroBox">
<div class="heroText">
<div class="pill">⚡ KOTA'S ANIME • NEXT-GEN STREETWEAR</div>
<h1>WEAR YOUR<br><span class="gradient">UNIVERSE.</span></h1>
<p>Anime-inspired Gen-Alpha streetwear with characters displayed directly on the T-shirt designs. Naruto, Gojo, Igris and more.</p>
<a class="btn primary" href="#shop">SHOP CHARACTER DROPS →</a>
<a class="btn secondary" href="#anime">EXPLORE ANIME</a>
</div>
</div>
</div>
</section>

<section id="anime">
<div class="container">
<div class="title"><h2>CHOOSE YOUR <span class="gradient">UNIVERSE.</span></h2><p>Character collections.</p></div>
<div class="animeGrid">

<div class="anime"><div class="mini">
<svg viewBox="0 0 200 180"><circle cx="100" cy="90" r="55" fill="#f2ae8c"/><path d="M45 85Q48 15 72 30Q100 0 115 28Q145 0 155 32Q185 20 157 90Q100 55 45 85" fill="#ffd800"/><path d="M55 77Q100 55 155 77v25H55z" fill="#172f6b"/><circle cx="78" cy="105" r="9" fill="#69a3dc"/><circle cx="122" cy="105" r="9" fill="#69a3dc"/><path d="M75 145Q100 155 125 145" fill="none" stroke="#111" stroke-width="3"/></svg>
</div><h3>Naruto</h3><p>NINJA ENERGY →</p></div>

<div class="anime"><div class="mini">
<svg viewBox="0 0 200 180"><circle cx="100" cy="88" r="57" fill="#f2c0a6"/><path d="M45 82Q45 25 70 35Q100 5 130 35Q165 20 157 85Q125 55 100 60Q72 57 45 82" fill="#f2efff"/><path d="M58 85Q100 68 142 85" stroke="#11132a" stroke-width="14"/><circle cx="78" cy="102" r="8" fill="#35d7ff"/><circle cx="122" cy="102" r="8" fill="#35d7ff"/><path d="M65 145Q100 165 135 145L155 180H45z" fill="#15152a"/></svg>
</div><h3>Gojo</h3><p>LIMITLESS →</p></div>

<div class="anime"><div class="mini">
<svg viewBox="0 0 200 180"><path d="M100 15L125 42L160 38L155 72L185 95L158 115L165 150L130 145L100 168L70 145L35 150L42 115L15 95L45 72L40 38L75 42Z" fill="#a70d2e" stroke="#27dfff" stroke-width="3"/><path d="M62 78L100 48L138 78L145 125L125 150H75L55 125Z" fill="#080c18" stroke="#9cefff" stroke-width="3"/><path d="M72 98L91 88L84 110M128 98L109 88L116 110" stroke="#27dfff" stroke-width="5"/></svg>
</div><h3>Igris</h3><p>SHADOW MODE →</p></div>

<div class="anime"><div class="mini"><div style="font-size:55px;text-align:center;padding-top:25px">☠</div></div><h3>Death Note</h3><p>DARK MODE →</p></div>
<div class="anime"><div class="mini"><div style="font-size:55px;text-align:center;padding-top:25px">⚔</div></div><h3>Attack on Titan</h3><p>SCOUT MODE →</p></div>
<div class="anime"><div class="mini"><div style="font-size:55px;text-align:center;padding-top:25px">🏐</div></div><h3>Haikyuu!!</h3><p>COURT ENERGY →</p></div>

</div>
</div>
</section>

<section id="shop">
<div class="container">
<div class="title"><h2>CHARACTER <span class="gradient">DROPS.</span></h2><p>The artwork is part of the T-shirt itself.</p></div>
<div class="filters">
<button class="filter active" onclick="filterProducts('all',this)">ALL</button>
<button class="filter" onclick="filterProducts('naruto',this)">NARUTO</button>
<button class="filter" onclick="filterProducts('gojo',this)">GOJO</button>
<button class="filter" onclick="filterProducts('igris',this)">IGRIS</button>
</div>

<div class="products">

<article class="product" data-anime="naruto">
<div class="visual"><span class="badge">HOT</span><button class="wish" onclick="wish(this)">♡</button><div class="shirt"><div class="neck"></div><div class="art">
<svg viewBox="0 0 200 220"><circle cx="100" cy="105" r="67" fill="#f2ae8c"/><path d="M40 95Q45 10 75 30Q100 0 120 30Q150 5 160 38Q185 30 165 105Q100 60 40 95" fill="#ffd800"/><path d="M45 85Q100 60 155 85v28H45z" fill="#172f6b"/><rect x="68" y="78" width="64" height="27" rx="6" fill="#adb6c8"/><circle cx="73" cy="120" r="10" fill="#fff"/><circle cx="127" cy="120" r="10" fill="#fff"/><circle cx="73" cy="120" r="5" fill="#4d83bd"/><circle cx="127" cy="120" r="5" fill="#4d83bd"/><path d="M78 157Q100 168 122 157" fill="none" stroke="#111" stroke-width="3"/></svg><label>NARUTO</label></div><div class="brand">KOTA'S<br>ANIME</div></div><div class="caption">CHARACTER ART • FRONT</div></div>
<div class="info"><em class="animeName">Naruto</em><h3>Hokage Oversized Tee</h3><p>Bold ninja character graphic with a Gen-Alpha oversized fit.</p><div class="stars">★★★★★ <span>4.9</span></div><div class="buy"><strong class="price">₹1,499</strong><button class="add" onclick="addCart('Hokage Oversized Tee')">ADD +</button></div></div>
</article>

<article class="product" data-anime="gojo">
<div class="visual"><span class="badge">NEW</span><button class="wish" onclick="wish(this)">♡</button><div class="shirt"><div class="neck"></div><div class="art">
<svg viewBox="0 0 200 220"><circle cx="100" cy="100" r="68" fill="#f2c0a6"/><path d="M42 95Q42 18 72 34Q100 0 128 34Q165 17 158 95Q130 65 100 68Q68 64 42 95" fill="#f0ecff"/><path d="M52 88Q100 70 148 88" stroke="#11132a" stroke-width="14"/><circle cx="78" cy="108" r="9" fill="#28d9ff"/><circle cx="122" cy="108" r="9" fill="#28d9ff"/><path d="M70 153Q100 166 130 153" fill="none" stroke="#111" stroke-width="3"/><path d="M60 185L100 165L140 185L160 220H40Z" fill="#17172a"/></svg><label>GOJO</label></div><div class="brand">KOTA'S<br>ANIME</div></div><div class="caption">CHARACTER ART • FRONT</div></div>
<div class="info"><em class="animeName">Jujutsu Kaisen</em><h3>Limitless Graphic Tee</h3><p>Electric blue character artwork with a futuristic oversized silhouette.</p><div class="stars">★★★★★ <span>4.9</span></div><div class="buy"><strong class="price">₹1,699</strong><button class="add" onclick="addCart('Limitless Graphic Tee')">ADD +</button></div></div>
</article>

<article class="product" data-anime="igris">
<div class="visual"><span class="badge">EPIC</span><button class="wish" onclick="wish(this)">♡</button><div class="shirt"><div class="neck"></div><div class="art">
<svg viewBox="0 0 200 220"><path d="M100 10L126 42L160 38L155 75L185 100L158 120L165 160L130 150L100 180L70 150L35 160L42 120L15 100L45 75L40 38L74 42Z" fill="#a70d2e" stroke="#27dfff" stroke-width="4"/><path d="M60 82L100 48L140 82L150 137L125 166H75L50 137Z" fill="#080c18" stroke="#a6efff" stroke-width="4"/><path d="M70 103L92 91L84 117M130 103L108 91L116 117" stroke="#27dfff" stroke-width="6"/><path d="M75 168L58 205L83 194L100 218L117 194L142 205L125 168" fill="#121525" stroke="#e01e4a" stroke-width="4"/></svg><label>IGRIS</label></div><div class="brand">KOTA'S<br>ANIME</div></div><div class="caption">CHARACTER ART • FRONT</div></div>
<div class="info"><em class="animeName">Solo Leveling</em><h3>Igris Shadow Knight Tee</h3><p>Crimson and cyan shadow-knight graphic with dark streetwear energy.</p><div class="stars">★★★★★ <span>4.9</span></div><div class="buy"><strong class="price">₹1,799</strong><button class="add" onclick="addCart('Igris Shadow Knight Tee')">ADD +</button></div></div>
</article>

<article class="product" data-anime="naruto"><div class="visual"><span class="badge">DROP</span><button class="wish" onclick="wish(this)">♡</button><div class="shirt"><div class="neck"></div><div class="art"><svg viewBox="0 0 200 220"><circle cx="100" cy="105" r="68" fill="#f2ae8c"/><path d="M38 100Q40 15 72 34Q100 0 122 32Q155 5 162 42Q188 30 164 105Q100 65 38 100" fill="#ffd800"/><path d="M45 88Q100 65 155 88v28H45z" fill="#17376f"/><circle cx="75" cy="120" r="10" fill="#fff"/><circle cx="125" cy="120" r="10" fill="#fff"/><circle cx="75" cy="120" r="5" fill="#4d83bd"/><circle cx="125" cy="120" r="5" fill="#4d83bd"/></svg><label>NARUTO</label></div><div class="brand">KOTA'S<br>ANIME</div></div><div class="caption">CHARACTER ART • FRONT</div></div><div class="info"><em class="animeName">Naruto</em><h3>Leaf Village Cargo Tee</h3><p>Ninja graphic and bright accent detailing.</p><div class="stars">★★★★★ <span>4.8</span></div><div class="buy"><strong class="price">₹1,599</strong><button class="add" onclick="addCart('Leaf Village Cargo Tee')">ADD +</button></div></div></article>

<article class="product" data-anime="gojo"><div class="visual"><span class="badge">HOT</span><button class="wish" onclick="wish(this)">♡</button><div class="shirt"><div class="neck"></div><div class="art"><svg viewBox="0 0 200 220"><circle cx="100" cy="100" r="68" fill="#f2c0a6"/><path d="M42 95Q42 18 72 34Q100 0 128 34Q165 17 158 95Q130 65 100 68Q68 64 42 95" fill="#f0ecff"/><path d="M52 88Q100 70 148 88" stroke="#11132a" stroke-width="14"/><circle cx="78" cy="108" r="9" fill="#28d9ff"/><circle cx="122" cy="108" r="9" fill="#28d9ff"/><path d="M65 185L100 165L135 185L158 220H42Z" fill="#17172a"/></svg><label>GOJO</label></div><div class="brand">KOTA'S<br>ANIME</div></div><div class="caption">CHARACTER ART • FRONT</div></div><div class="info"><em class="animeName">Jujutsu Kaisen</em><h3>Six Eyes Street Hoodie</h3><p>Dark oversized hoodie concept with electric character artwork.</p><div class="stars">★★★★★ <span>4.9</span></div><div class="buy"><strong class="price">₹2,799</strong><button class="add" onclick="addCart('Six Eyes Street Hoodie')">ADD +</button></div></div></article>

<article class="product" data-anime="igris"><div class="visual"><span class="badge">RARE</span><button class="wish" onclick="wish(this)">♡</button><div class="shirt"><div class="neck"></div><div class="art"><svg viewBox="0 0 200 220"><path d="M100 10L126 42L160 38L155 75L185 100L158 120L165 160L130 150L100 180L70 150L35 160L42 120L15 100L45 75L40 38L74 42Z" fill="#a70d2e" stroke="#27dfff" stroke-width="4"/><path d="M60 82L100 48L140 82L150 137L125 166H75L50 137Z" fill="#080c18" stroke="#a6efff" stroke-width="4"/><path d="M70 103L92 91L84 117M130 103L108 91L116 117" stroke="#27dfff" stroke-width="6"/></svg><label>IGRIS</label></div><div class="brand">KOTA'S<br>ANIME</div></div><div class="caption">CHARACTER ART • FRONT</div></div><div class="info"><em class="animeName">Solo Leveling</em><h3>Crimson Monarch Hoodie</h3><p>Shadow monarch graphic with red armor energy.</p><div class="stars">★★★★★ <span>4.9</span></div><div class="buy"><strong class="price">₹2,899</strong><button class="add" onclick="addCart('Crimson Monarch Hoodie')">ADD +</button></div></div></article>

</div>
</div>
</section>

<section id="featured">
<div class="container">
<div class="feature">
<div class="featureArt">
<svg viewBox="0 0 260 340"><circle cx="130" cy="125" r="85" fill="#f2c0a6"/><path d="M45 120Q45 35 78 50Q108 8 130 48Q158 5 188 50Q220 35 215 120Q180 80 130 82Q80 80 45 120" fill="#f0ecff"/><path d="M62 116Q130 92 198 116" stroke="#11132a" stroke-width="17"/><circle cx="97" cy="137" r="10" fill="#28d9ff"/><circle cx="163" cy="137" r="10" fill="#28d9ff"/><path d="M75 210Q130 185 185 210L220 340H40Z" fill="#17172a"/><text x="130" y="282" text-anchor="middle" fill="#20d9ff" font-size="15" font-weight="900">LIMITLESS</text></svg>
</div>
<div class="featureText"><small>KOTA'S CHARACTER PRINT SERIES</small><h2>THE CHARACTER<br><span class="gradient">IS THE FIT.</span></h2><p>This is a completely standalone HTML application. The anime-style artwork is written inside the HTML as SVG, so it does not depend on image files, internet links or Python.</p><a class="btn primary" href="#shop">VIEW CHARACTER DROPS →</a></div>
</div>
</div>
</section>

<section id="styles">
<div class="container">
<div class="title"><h2>BUILD YOUR <span class="gradient">FIT.</span></h2><p>Next-generation anime streetwear.</p></div>
<div class="styles">
<div class="style"><div>👕</div><h3>OVERSIZED TEES</h3><p>Large character graphics and relaxed silhouettes.</p></div>
<div class="style"><div>👖</div><h3>CARGO PANTS</h3><p>Wide utility silhouettes with anime-inspired details.</p></div>
<div class="style"><div>🧥</div><h3>HOODIES</h3><p>Heavy layers with bold futuristic character graphics.</p></div>
</div>
</div>
</section>

<section>
<div class="container">
<div class="news"><h2>JOIN THE <span class="gradient">DROP LIST.</span></h2><p>New characters. New fits.</p><div class="email"><input id="email" placeholder="your@email.com"><button onclick="subscribe()">JOIN NOW</button></div></div>
</div>
</section>

</main>

<footer>
<div class="container">
<div class="footerGrid">
<div><a class="logo" href="#home">KOTA'S <b>ANIME</b></a><p>Anime-inspired Gen-Alpha streetwear demo.</p></div>
<div><h4>SHOP</h4><a href="#shop">T-Shirts</a><br><a href="#styles">Pants</a><br><a href="#styles">Hoodies</a></div>
<div><h4>ANIME</h4><a href="#anime">Naruto</a><br><a href="#anime">Gojo</a><br><a href="#anime">Igris</a></div>
<div><h4>HELP</h4><a href="#">Size Guide</a><br><a href="#">Shipping</a><br><a href="#">Returns</a></div>
</div>
<div class="copy">© 2026 KOTA'S ANIME • DEMO STORE</div>
</div>
</footer>

<div class="cart">🛒 CART <span id="cartCount">0</span></div>
<div class="toast" id="toast"></div>

<script>
let cartCount=0;

function addCart(name){
cartCount++;
document.getElementById("cartCount").textContent=cartCount;
showToast(name+" added to cart ✦");
}

function wish(button){
button.classList.toggle("liked");
button.textContent=button.classList.contains("liked")?"♥":"♡";
}

function showToast(message){
const toast=document.getElementById("toast");
toast.textContent=message;
toast.classList.add("show");
clearTimeout(window.toastTimer);
window.toastTimer=setTimeout(function(){toast.classList.remove("show")},2200);
}

function filterProducts(category,button){
document.querySelectorAll(".filter").forEach(function(x){x.classList.remove("active")});
if(button)button.classList.add("active");
document.querySelectorAll(".product").forEach(function(card){
card.classList.toggle("hide",category!=="all" && card.dataset.anime!==category);
});
}

function searchProducts(){
const query=prompt("Search Naruto, Gojo, Igris, tee, hoodie or pants:");
if(!query)return;
const value=query.toLowerCase().trim();
document.querySelectorAll(".product").forEach(function(card){
card.classList.toggle("hide",!card.innerText.toLowerCase().includes(value));
});
document.getElementById("shop").scrollIntoView({behavior:"smooth"});
}

function subscribe(){
const email=document.getElementById("email");
if(!email.value.trim()){
showToast("Enter your email first");
return;
}
showToast("You're on the drop list ⚡");
email.value="";
}
</script>
</body>
</html>
