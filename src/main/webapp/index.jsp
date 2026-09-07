<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>KOTA'S ANIME — Anime Streetwear</title>

<style>
:root{
    --bg:#070711;
    --panel:#111124;
    --panel2:#17172f;
    --pink:#ff2d92;
    --purple:#8b5cf6;
    --cyan:#20d9ff;
    --lime:#c8ff35;
    --white:#ffffff;
    --muted:#a9a9bf;
    --line:rgba(255,255,255,.10);
    --shadow:0 30px 90px rgba(0,0,0,.55);
}

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
}

html{
    scroll-behavior:smooth;
}

body{
    font-family:Arial,Helvetica,sans-serif;
    color:var(--white);
    background:
        radial-gradient(circle at 5% 0%,rgba(255,45,146,.18),transparent 25%),
        radial-gradient(circle at 95% 5%,rgba(32,217,255,.13),transparent 25%),
        linear-gradient(180deg,#070711,#0b0b19 55%,#06060e);
    min-height:100vh;
    overflow-x:hidden;
}

body::before{
    content:"";
    position:fixed;
    inset:0;
    pointer-events:none;
    opacity:.035;
    background-image:
        linear-gradient(#fff 1px,transparent 1px),
        linear-gradient(90deg,#fff 1px,transparent 1px);
    background-size:45px 45px;
}

a{
    color:inherit;
    text-decoration:none;
}

button,
input{
    font:inherit;
}

button{
    cursor:pointer;
}

.container{
    width:92%;
    max-width:1320px;
    margin:auto;
}

.gradient{
    background:linear-gradient(90deg,var(--pink),var(--purple),var(--cyan));
    background-clip:text;
    -webkit-background-clip:text;
    color:transparent;
}

/* HEADER */

header{
    position:sticky;
    top:0;
    z-index:100;
    background:rgba(7,7,17,.84);
    backdrop-filter:blur(22px);
    border-bottom:1px solid var(--line);
}

.header{
    height:78px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:20px;
}

.logo{
    display:flex;
    align-items:center;
    gap:10px;
    font-size:21px;
    font-weight:1000;
    letter-spacing:-1px;
}

.logo-mark{
    width:44px;
    height:44px;
    border-radius:14px;
    display:grid;
    place-items:center;
    background:linear-gradient(135deg,var(--pink),var(--purple));
    box-shadow:0 0 35px rgba(255,45,146,.28);
}

.logo span{
    color:var(--pink);
}

nav{
    display:flex;
    gap:4px;
}

nav a{
    padding:10px 13px;
    border-radius:12px;
    color:var(--muted);
    font-size:11px;
    font-weight:900;
}

nav a:hover{
    color:#fff;
    background:rgba(255,255,255,.07);
}

.header-actions{
    display:flex;
    gap:8px;
}

.icon{
    width:42px;
    height:42px;
    border-radius:50%;
    color:#fff;
    background:rgba(255,255,255,.06);
    border:1px solid var(--line);
    display:grid;
    place-items:center;
}

.icon:hover{
    background:linear-gradient(135deg,var(--pink),var(--purple));
}

/* HERO */

.hero{
    padding:22px 0 10px;
}

.hero-box{
    min-height:650px;
    position:relative;
    overflow:hidden;
    display:flex;
    align-items:center;
    border-radius:36px;
    border:1px solid var(--line);
    background:
        linear-gradient(90deg,rgba(5,5,14,.98),rgba(5,5,14,.74),rgba(5,5,14,.25)),
        url("https://pbs.twimg.com/media/GSdbAUiXIAAivB3.jpg")
        center/cover;
    box-shadow:var(--shadow);
}

.hero-box::after{
    content:"";
    position:absolute;
    width:500px;
    height:500px;
    right:-150px;
    top:-150px;
    border-radius:50%;
    background:linear-gradient(135deg,var(--pink),var(--purple),var(--cyan));
    filter:blur(100px);
    opacity:.25;
}

.hero-content{
    position:relative;
    z-index:2;
    padding:70px;
    max-width:800px;
}

.pill{
    display:inline-flex;
    padding:9px 14px;
    border-radius:999px;
    background:rgba(255,45,146,.12);
    border:1px solid rgba(255,45,146,.3);
    color:#ff9aca;
    font-size:10px;
    font-weight:1000;
    letter-spacing:1px;
}

.hero h1{
    margin:24px 0;
    font-size:clamp(58px,8vw,108px);
    line-height:.86;
    letter-spacing:-7px;
}

.hero p{
    max-width:620px;
    color:#c4c4d3;
    font-size:14px;
    line-height:1.8;
    margin-bottom:28px;
}

.hero-buttons{
    display:flex;
    flex-wrap:wrap;
    gap:10px;
}

.btn{
    display:inline-flex;
    align-items:center;
    justify-content:center;
    padding:15px 21px;
    border-radius:14px;
    font-size:11px;
    font-weight:1000;
}

.primary{
    color:#fff;
    background:linear-gradient(100deg,var(--pink),var(--purple));
    box-shadow:0 15px 40px rgba(255,45,146,.2);
}

.secondary{
    color:#fff;
    background:rgba(255,255,255,.07);
    border:1px solid var(--line);
}

/* TICKER */

.ticker{
    overflow:hidden;
    border-block:1px solid var(--line);
    background:rgba(255,255,255,.025);
}

.ticker-track{
    display:flex;
    width:max-content;
    animation:ticker 22s linear infinite;
}

.ticker-item{
    padding:17px 30px;
    white-space:nowrap;
    font-size:10px;
    font-weight:1000;
    letter-spacing:1px;
}

.ticker-item b{
    color:var(--pink);
}

@keyframes ticker{
    from{
        transform:translateX(0);
    }
    to{
        transform:translateX(-50%);
    }
}

/* GENERAL SECTIONS */

section{
    padding:78px 0;
}

.section-title{
    margin-bottom:28px;
}

.section-title h2{
    font-size:38px;
    letter-spacing:-2px;
}

.section-title p{
    margin-top:7px;
    color:var(--muted);
    font-size:12px;
}

/* ANIME COLLECTIONS */

.anime-grid{
    display:grid;
    grid-template-columns:repeat(6,1fr);
    gap:13px;
}

.anime-card{
    padding:14px;
    border-radius:22px;
    border:1px solid var(--line);
    background:var(--panel);
    transition:.25s;
}

.anime-card:hover{
    transform:translateY(-8px);
    border-color:rgba(255,45,146,.6);
    box-shadow:var(--shadow);
}

.anime-image{
    height:160px;
    overflow:hidden;
    border-radius:16px;
    background:#080811;
}

.anime-image img{
    width:100%;
    height:100%;
    object-fit:cover;
}

.anime-card h3{
    margin-top:13px;
    font-size:13px;
}

.anime-card p{
    margin-top:6px;
    color:var(--muted);
    font-size:9px;
    font-weight:800;
}

/* FILTER STYLE */

.filters{
    display:flex;
    flex-wrap:wrap;
    gap:8px;
    margin-bottom:25px;
}

.filter{
    padding:10px 15px;
    border-radius:999px;
    color:var(--muted);
    background:var(--panel);
    border:1px solid var(--line);
    font-size:10px;
    font-weight:1000;
}

.filter:hover{
    color:#fff;
    background:linear-gradient(100deg,var(--pink),var(--purple));
}

/* PRODUCTS */

.products{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:20px;
}

.product{
    overflow:hidden;
    border-radius:26px;
    border:1px solid var(--line);
    background:var(--panel);
    transition:.3s;
}

.product:hover{
    transform:translateY(-9px);
    border-color:rgba(139,92,246,.6);
    box-shadow:var(--shadow);
}

.product-visual{
    height:430px;
    position:relative;
    display:flex;
    align-items:center;
    justify-content:center;
    overflow:hidden;
    background:
        radial-gradient(circle at 50% 30%,#30304f,#101020 68%);
}

.product-visual::before{
    content:"";
    position:absolute;
    width:300px;
    height:300px;
    border-radius:50%;
    background:linear-gradient(135deg,var(--pink),var(--purple),var(--cyan));
    filter:blur(80px);
    opacity:.18;
}

.badge{
    position:absolute;
    z-index:8;
    left:14px;
    top:14px;
    padding:7px 10px;
    border-radius:999px;
    background:var(--lime);
    color:#101010;
    font-size:8px;
    font-weight:1000;
}

.heart{
    position:absolute;
    z-index:8;
    right:14px;
    top:14px;
    width:39px;
    height:39px;
    border-radius:50%;
    background:rgba(0,0,0,.58);
    color:#fff;
    border:1px solid rgba(255,255,255,.14);
    display:grid;
    place-items:center;
    font-size:17px;
}

/* T-SHIRT MOCKUP */

.shirt{
    position:relative;
    z-index:3;
    width:275px;
    height:335px;
    background:
        linear-gradient(145deg,#292942,#08080f);
    clip-path:
        polygon(
            24% 5%,
            38% 0,
            50% 8%,
            62% 0,
            76% 5%,
            100% 22%,
            83% 43%,
            74% 29%,
            74% 100%,
            26% 100%,
            26% 29%,
            17% 43%,
            0 22%
        );
    filter:drop-shadow(0 30px 35px rgba(0,0,0,.58));
}

.shirt::after{
    content:"";
    position:absolute;
    inset:5px;
    background:
        linear-gradient(145deg,#24243d,#09090f);
    clip-path:inherit;
}

.shirt-neck{
    position:absolute;
    z-index:4;
    left:calc(50% - 31px);
    top:7px;
    width:62px;
    height:33px;
    border-radius:0 0 40px 40px;
    background:#06060d;
}

.character-print{
    position:absolute;
    z-index:6;
    left:50%;
    top:62px;
    transform:translateX(-50%);
    width:154px;
    height:185px;
    overflow:hidden;
    border-radius:16px;
    background:#07070e;
    border:2px solid rgba(255,255,255,.22);
    box-shadow:0 14px 35px rgba(0,0,0,.55);
}

.character-print img{
    width:100%;
    height:100%;
    display:block;
    object-fit:cover;
}

.character-label{
    position:absolute;
    left:8px;
    bottom:8px;
    padding:4px 7px;
    border-radius:5px;
    color:#fff;
    background:rgba(0,0,0,.75);
    font-size:7px;
    font-weight:1000;
    letter-spacing:.6px;
}

.brand-print{
    position:absolute;
    z-index:7;
    left:50%;
    bottom:28px;
    transform:translateX(-50%);
    text-align:center;
    font-size:7px;
    line-height:1.1;
    font-weight:1000;
    letter-spacing:1px;
}

.front-label{
    position:absolute;
    z-index:8;
    bottom:13px;
    left:50%;
    transform:translateX(-50%);
    padding:6px 9px;
    border-radius:999px;
    background:rgba(0,0,0,.62);
    color:#ddd;
    white-space:nowrap;
    font-size:8px;
    font-weight:900;
}

.product-info{
    padding:19px;
}

.product-anime{
    color:var(--cyan);
    font-size:9px;
    font-weight:1000;
    text-transform:uppercase;
    letter-spacing:1px;
}

.product-info h3{
    margin:7px 0;
    font-size:17px;
}

.product-info p{
    min-height:35px;
    color:var(--muted);
    font-size:10px;
    line-height:1.6;
}

.rating{
    margin-top:12px;
    color:#ffe45c;
    font-size:10px;
}

.rating span{
    color:var(--muted);
    margin-left:5px;
}

.buy-row{
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:10px;
    margin-top:16px;
}

.price{
    font-size:20px;
    font-weight:1000;
}

.add{
    padding:10px 13px;
    border-radius:11px;
    color:#fff;
    background:linear-gradient(100deg,var(--purple),var(--pink));
    font-size:9px;
    font-weight:1000;
}

/* FEATURE */

.feature{
    display:grid;
    grid-template-columns:1fr 1fr;
    min-height:500px;
    overflow:hidden;
    border-radius:32px;
    border:1px solid var(--line);
    background:linear-gradient(135deg,#201032,#0b1725);
    box-shadow:var(--shadow);
}

.feature-image{
    display:flex;
    align-items:center;
    justify-content:center;
    padding:45px;
    background:radial-gradient(circle,#29294e,#080811);
}

.feature-image img{
    width:360px;
    height:420px;
    object-fit:cover;
    border-radius:28px;
    transform:rotate(-4deg);
    border:1px solid rgba(255,255,255,.2);
    box-shadow:25px 30px 70px rgba(0,0,0,.6);
}

.feature-copy{
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:60px;
}

.feature-copy small{
    color:var(--pink);
    font-size:9px;
    font-weight:1000;
    letter-spacing:2px;
}

.feature-copy h2{
    margin:14px 0;
    font-size:50px;
    line-height:.93;
    letter-spacing:-3px;
}

.feature-copy p{
    max-width:480px;
    margin-bottom:25px;
    color:var(--muted);
    font-size:13px;
    line-height:1.8;
}

/* STYLE CARDS */

.style-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:18px;
}

.style-card{
    min-height:220px;
    padding:30px;
    border-radius:24px;
    border:1px solid var(--line);
    background:var(--panel);
    transition:.25s;
}

.style-card:hover{
    transform:translateY(-7px);
    border-color:var(--cyan);
}

.style-icon{
    font-size:38px;
    margin-bottom:18px;
}

.style-card h3{
    margin-bottom:9px;
    font-size:17px;
}

.style-card p{
    color:var(--muted);
    font-size:11px;
    line-height:1.7;
}

/* NEWSLETTER */

.newsletter{
    padding:55px 25px;
    text-align:center;
    border-radius:30px;
    border:1px solid var(--line);
    background:
        radial-gradient(circle at 50% 0,rgba(255,45,146,.20),transparent 55%),
        var(--panel);
}

.newsletter h2{
    font-size:38px;
    letter-spacing:-2px;
}

.newsletter p{
    margin:9px 0 22px;
    color:var(--muted);
    font-size:12px;
}

.newsletter-form{
    max-width:540px;
    margin:auto;
    display:flex;
    gap:8px;
}

.newsletter-form input{
    flex:1;
    min-width:0;
    padding:15px;
    border-radius:13px;
    outline:none;
    color:#fff;
    background:#07070e;
    border:1px solid var(--line);
}

.newsletter-form button{
    padding:15px 18px;
    border-radius:13px;
    color:#fff;
    background:linear-gradient(100deg,var(--pink),var(--purple));
    font-size:10px;
    font-weight:1000;
}

/* FOOTER */

footer{
    padding:50px 0 25px;
    border-top:1px solid var(--line);
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:30px;
    margin-bottom:35px;
}

footer h4{
    margin-bottom:12px;
    font-size:11px;
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
    border-top:1px solid var(--line);
    color:#66667a;
    text-align:center;
    font-size:9px;
}

/* RESPONSIVE */

@media(max-width:1050px){

    .anime-grid{
        grid-template-columns:repeat(3,1fr);
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .footer-grid{
        grid-template-columns:1fr 1fr;
    }
}

@media(max-width:800px){

    nav{
        display:none;
    }

    .hero-content{
        padding:45px;
    }

    .feature{
        grid-template-columns:1fr;
    }

    .style-grid{
        grid-template-columns:1fr;
    }
}

@media(max-width:540px){

    .container{
        width:94%;
    }

    .header{
        height:68px;
    }

    .logo{
        font-size:16px;
    }

    .logo-mark{
        width:38px;
        height:38px;
    }

    .icon{
        width:37px;
        height:37px;
    }

    .hero-box{
        min-height:540px;
        border-radius:25px;
    }

    .hero-content{
        padding:28px;
    }

    .hero h1{
        font-size:50px;
        letter-spacing:-4px;
    }

    .hero p{
        font-size:12px;
    }

    section{
        padding:55px 0;
    }

    .section-title h2{
        font-size:29px;
    }

    .anime-grid{
        grid-template-columns:repeat(2,1fr);
    }

    .products{
        grid-template-columns:1fr;
    }

    .feature-copy{
        padding:32px;
    }

    .feature-copy h2{
        font-size:38px;
    }

    .newsletter-form{
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

<a class="logo" href="#home">
<div class="logo-mark">✦</div>
<div>KOTA'S <span>ANIME</span></div>
</a>

<nav>
<a href="#home">HOME</a>
<a href="#anime">ANIME</a>
<a href="#shop">SHOP</a>
<a href="#featured">FEATURED</a>
<a href="#styles">STYLES</a>
</nav>

<div class="header-actions">
<a class="icon" href="#shop">⌕</a>
<a class="icon" href="#shop">♡</a>
<a class="icon" href="#anime">☰</a>
</div>

</div>
</header>

<main id="home">

<section class="hero">
<div class="container">
<div class="hero-box">

<div class="hero-content">

<div class="pill">
⚡ KOTA'S ANIME • REAL ANIME ARTWORK
</div>

<h1>
WEAR YOUR<br>
<span class="gradient">UNIVERSE.</span>
</h1>

<p>
Next-generation anime streetwear featuring real character
images. Naruto, Gojo, Igris, Light Yagami, Eren and Hinata
are displayed directly on the clothing mockups.
</p>

<div class="hero-buttons">
<a class="btn primary" href="#shop">
SHOP CHARACTER DROPS →
</a>

<a class="btn secondary" href="#anime">
EXPLORE ANIME
</a>
</div>

</div>
</div>
</div>
</section>

<div class="ticker">
<div class="ticker-track">

<div class="ticker-item">
🍥 NARUTO <b>DROP</b>
</div>

<div class="ticker-item">
👁 GOJO <b>LIMITLESS</b>
</div>

<div class="ticker-item">
⚔️ IGRIS <b>SHADOW MODE</b>
</div>

<div class="ticker-item">
📓 DEATH NOTE <b>KIRA MODE</b>
</div>

<div class="ticker-item">
⚔️ ATTACK ON TITAN <b>SCOUT MODE</b>
</div>

<div class="ticker-item">
🏐 HAIKYUU <b>COURT MODE</b>
</div>

<div class="ticker-item">
🍥 NARUTO <b>DROP</b>
</div>

<div class="ticker-item">
👁 GOJO <b>LIMITLESS</b>
</div>

<div class="ticker-item">
⚔️ IGRIS <b>SHADOW MODE</b>
</div>

<div class="ticker-item">
📓 DEATH NOTE <b>KIRA MODE</b>
</div>

<div class="ticker-item">
⚔️ ATTACK ON TITAN <b>SCOUT MODE</b>
</div>

<div class="ticker-item">
🏐 HAIKYUU <b>COURT MODE</b>
</div>

</div>
</div>

<section id="anime">

<div class="container">

<div class="section-title">
<h2>
CHOOSE YOUR <span class="gradient">UNIVERSE.</span>
</h2>

<p>
Real anime character images from online sources are used in this demo.
</p>
</div>

<div class="anime-grid">

<a class="anime-card" href="#naruto">
<div class="anime-image">
<img
src="https://pbs.twimg.com/media/GSdbAUiXIAAivB3.jpg"
alt="Naruto Uzumaki"
>
</div>
<h3>Naruto</h3>
<p>NINJA ENERGY →</p>
</a>

<a class="anime-card" href="#gojo">
<div class="anime-image">
<img
src="https://jujutsukaisen.jp/images/chara_detail4.png"
alt="Satoru Gojo"
>
</div>
<h3>Jujutsu Kaisen</h3>
<p>LIMITLESS →</p>
</a>

<a class="anime-card" href="#igris">
<div class="anime-image">
<img
src="https://ovicio.com.br/wp-content/uploads/2025/01/20250104-solo-leveling-visual-igris-ovicio-724x1024.webp"
alt="Igris"
>
</div>
<h3>Solo Leveling</h3>
<p>SHADOW MODE →</p>
</a>

<a class="anime-card" href="#deathnote">
<div class="anime-image">
<img
src="https://m.media-amazon.com/images/S/pv-target-images/acd7e913a73fd3040445d5ecd512e3f50158e9222724962c26cd2418fc7522ab.jpg"
alt="Light Yagami"
>
</div>
<h3>Death Note</h3>
<p>KIRA MODE →</p>
</a>

<a class="anime-card" href="#aot">
<div class="anime-image">
<img
src="https://i.pinimg.com/564x/87/12/a8/8712a86929702cbdba6a8ea594c4efde.jpg"
alt="Eren Yeager"
>
</div>
<h3>Attack on Titan</h3>
<p>SCOUT MODE →</p>
</a>

<a class="anime-card" href="#haikyuu">
<div class="anime-image">
<img
src="https://image.zeta-ai.io/profile-image/786db3be-3c5c-4985-a555-54fc6628a259/666df2b4-49a6-43b2-94f8-3d172f3ed606/92e19d2e-481d-47b3-a36a-a87c43f149c0.jpeg"
alt="Hinata Shoyo"
>
</div>
<h3>Haikyuu!!</h3>
<p>COURT ENERGY →</p>
</a>

</div>
</div>
</section>

<section id="shop">

<div class="container">

<div class="section-title">
<h2>
CHARACTER <span class="gradient">DROPS.</span>
</h2>

<p>
The real anime image is placed directly on the front of every T-shirt.
</p>
</div>

<div class="filters">

<a class="filter" href="#naruto">
NARUTO
</a>

<a class="filter" href="#gojo">
GOJO
</a>

<a class="filter" href="#igris">
IGRIS
</a>

<a class="filter" href="#deathnote">
DEATH NOTE
</a>

<a class="filter" href="#aot">
ATTACK ON TITAN
</a>

<a class="filter" href="#haikyuu">
HAIKYUU
</a>

</div>

<div class="products">

<!-- NARUTO -->

<article class="product" id="naruto">

<div class="product-visual">

<span class="badge">
HOT
</span>

<div class="heart">
♡
</div>

<div class="shirt">

<div class="shirt-neck">
</div>

<div class="character-print">

<img
src="https://pbs.twimg.com/media/GSdbAUiXIAAivB3.jpg"
alt="Naruto Uzumaki real anime image"
>

<div class="character-label">
NARUTO
</div>

</div>

<div class="brand-print">
KOTA'S<br>
ANIME
</div>

</div>

<div class="front-label">
REAL CHARACTER ART • FRONT PRINT
</div>

</div>

<div class="product-info">

<div class="product-anime">
Naruto
</div>

<h3>
Naruto Uzumaki Oversized Tee
</h3>

<p>
Real Naruto artwork printed as the center graphic.
Oversized Gen-Alpha streetwear fit.
</p>

<div class="rating">
★★★★★
<span>
4.9
</span>
</div>

<div class="buy-row">
<div class="price">
₹1,499
</div>

<a class="add" href="#shop">
ADD +
</a>
</div>

</div>

</article>

<!-- GOJO -->

<article class="product" id="gojo">

<div class="product-visual">

<span class="badge">
NEW
</span>

<div class="heart">
♡
</div>

<div class="shirt">

<div class="shirt-neck">
</div>

<div class="character-print">

<img
src="https://jujutsukaisen.jp/images/chara_detail4.png"
alt="Satoru Gojo real anime image"
>

<div class="character-label">
GOJO
</div>

</div>

<div class="brand-print">
KOTA'S<br>
ANIME
</div>

</div>

<div class="front-label">
REAL CHARACTER ART • FRONT PRINT
</div>

</div>

<div class="product-info">

<div class="product-anime">
Jujutsu Kaisen
</div>

<h3>
Satoru Gojo Limitless Tee
</h3>

<p>
Official character artwork presented as a bold front
graphic for a futuristic oversized tee.
</p>

<div class="rating">
★★★★★
<span>
4.9
</span>
</div>

<div class="buy-row">
<div class="price">
₹1,699
</div>

<a class="add" href="#shop">
ADD +
</a>
</div>

</div>

</article>

<!-- IGRIS -->

<article class="product" id="igris">

<div class="product-visual">

<span class="badge">
EPIC
</span>

<div class="heart">
♡
</div>

<div class="shirt">

<div class="shirt-neck">
</div>

<div class="character-print">

<img
src="https://ovicio.com.br/wp-content/uploads/2025/01/20250104-solo-leveling-visual-igris-ovicio-724x1024.webp"
alt="Igris Solo Leveling real anime image"
>

<div class="character-label">
IGRIS
</div>

</div>

<div class="brand-print">
KOTA'S<br>
ANIME
</div>

</div>

<div class="front-label">
REAL CHARACTER ART • FRONT PRINT
</div>

</div>

<div class="product-info">

<div class="product-anime">
Solo Leveling
</div>

<h3>
Igris Shadow Knight Tee
</h3>

<p>
Igris artwork with crimson and cyan energy for a dark
streetwear aesthetic.
</p>

<div class="rating">
★★★★★
<span>
4.9
</span>
</div>

<div class="buy-row">
<div class="price">
₹1,799
</div>

<a class="add" href="#shop">
ADD +
</a>
</div>

</div>

</article>

<!-- LIGHT -->

<article class="product" id="deathnote">

<div class="product-visual">

<span class="badge">
DARK
</span>

<div class="heart">
♡
</div>

<div class="shirt">

<div class="shirt-neck">
</div>

<div class="character-print">

<img
src="https://m.media-amazon.com/images/S/pv-target-images/acd7e913a73fd3040445d5ecd512e3f50158e9222724962c26cd2418fc7522ab.jpg"
alt="Light Yagami Death Note anime image"
>

<div class="character-label">
KIRA
</div>

</div>

<div class="brand-print">
KOTA'S<br>
ANIME
</div>

</div>

<div class="front-label">
REAL CHARACTER ART • FRONT PRINT
</div>

</div>

<div class="product-info">

<div class="product-anime">
Death Note
</div>

<h3>
Kira Mind Game Tee
</h3>

<p>
Light Yagami character image combined with a clean
dark fashion silhouette.
</p>

<div class="rating">
★★★★★
<span>
4.8
</span>
</div>

<div class="buy-row">
<div class="price">
₹1,599
</div>

<a class="add" href="#shop">
ADD +
</a>
</div>

</div>

</article>

<!-- EREN -->

<article class="product" id="aot">

<div class="product-visual">

<span class="badge">
DROP
</span>

<div class="heart">
♡
</div>

<div class="shirt">

<div class="shirt-neck">
</div>

<div class="character-print">

<img
src="https://i.pinimg.com/564x/87/12/a8/8712a86929702cbdba6a8ea594c4efde.jpg"
alt="Eren Yeager Attack on Titan anime image"
>

<div class="character-label">
AOT
</div>

</div>

<div class="brand-print">
KOTA'S<br>
ANIME
</div>

</div>

<div class="front-label">
REAL CHARACTER ART • FRONT PRINT
</div>

</div>

<div class="product-info">

<div class="product-anime">
Attack on Titan
</div>

<h3>
Eren Freedom Oversized Tee
</h3>

<p>
Eren-inspired character artwork with a dark oversized
streetwear look.
</p>

<div class="rating">
★★★★★
<span>
4.8
</span>
</div>

<div class="buy-row">
<div class="price">
₹1,749
</div>

<a class="add" href="#shop">
ADD +
</a>
</div>

</div>

</article>

<!-- HINATA -->

<article class="product" id="haikyuu">

<div class="product-visual">

<span class="badge">
COURT
</span>

<div class="heart">
♡
</div>

<div class="shirt">

<div class="shirt-neck">
</div>

<div class="character-print">

<img
src="https://image.zeta-ai.io/profile-image/786db3be-3c5c-4985-a555-54fc6628a259/666df2b4-49a6-43b2-94f8-3d172f3ed606/92e19d2e-481d-47b3-a36a-a87c43f149c0.jpeg"
alt="Hinata Shoyo Haikyuu anime image"
>

<div class="character-label">
HINATA
</div>

</div>

<div class="brand-print">
KOTA'S<br>
ANIME
</div>

</div>

<div class="front-label">
REAL CHARACTER ART • FRONT PRINT
</div>

</div>

<div class="product-info">

<div class="product-anime">
Haikyuu!!
</div>

<h3>
Hinata Court Energy Tee
</h3>

<p>
Real Hinata character artwork for a bright anime
sportswear-inspired street fit.
</p>

<div class="rating">
★★★★★
<span>
4.9
</span>
</div>

<div class="buy-row">
<div class="price">
₹1,649
</div>

<a class="add" href="#shop">
ADD +
</a>
</div>

</div>

</article>

</div>
</div>
</section>

<section id="featured">

<div class="container">

<div class="feature">

<div class="feature-image">

<img
src="https://jujutsukaisen.jp/images/chara_detail4.png"
alt="Gojo official character artwork"
>

</div>

<div class="feature-copy">

<small>
KOTA'S CHARACTER PRINT SERIES
</small>

<h2>
THE CHARACTER<br>
<span class="gradient">
IS THE FIT.
</span>
</h2>

<p>
The product mockup now uses real online anime artwork
inside the shirt instead of manually drawn replacement
characters.
</p>

<a class="btn primary" href="#shop">
VIEW CHARACTER DROPS →
</a>

</div>

</div>
</div>
</section>

<section id="styles">

<div class="container">

<div class="section-title">

<h2>
BUILD YOUR <span class="gradient">FIT.</span>
</h2>

<p>
Choose the silhouette that matches your anime universe.
</p>

</div>

<div class="style-grid">

<div class="style-card">
<div class="style-icon">
👕
</div>
<h3>
OVERSIZED TEES
</h3>
<p>
Large real character artwork printed on the front
with relaxed Gen-Alpha proportions.
</p>
</div>

<div class="style-card">
<div class="style-icon">
👖
</div>
<h3>
CARGO PANTS
</h3>
<p>
Wide utility silhouettes designed to pair with
character graphic tees.
</p>
</div>

<div class="style-card">
<div class="style-icon">
🧥
</div>
<h3>
HOODIES
</h3>
<p>
Heavy layers with oversized anime graphics and
futuristic streetwear energy.
</p>
</div>

</div>
</div>
</section>

<section>

<div class="container">

<div class="newsletter">

<h2>
JOIN THE <span class="gradient">DROP LIST.</span>
</h2>

<p>
New anime characters. New fits. New drops.
</p>

<div class="newsletter-form">

<input
type="email"
placeholder="your@email.com"
>

<button>
JOIN NOW ✦
</button>

</div>

</div>
</div>
</section>

</main>

<footer>

<div class="container">

<div class="footer-grid">

<div>

<a class="logo" href="#home">
<div class="logo-mark">
✦
</div>

<div>
KOTA'S <span>ANIME</span>
</div>
</a>

<p>
Anime streetwear demo using online character artwork.
For commercial merchandise, use artwork with appropriate
licensing or permission.
</p>

</div>

<div>

<h4>
SHOP
</h4>

<a href="#shop">
Character Tees
</a>

<br>

<a href="#styles">
Cargo Pants
</a>

<br>

<a href="#styles">
Hoodies
</a>

</div>

<div>

<h4>
ANIME
</h4>

<a href="#naruto">
Naruto
</a>

<br>

<a href="#gojo">
Gojo
</a>

<br>

<a href="#igris">
Igris
</a>

<br>

<a href="#deathnote">
Death Note
</a>

</div>

<div>

<h4>
COLLECTIONS
</h4>

<a href="#aot">
Attack on Titan
</a>

<br>

<a href="#haikyuu">
Haikyuu!!
</a>

<br>

<a href="#featured">
Featured
</a>

</div>

</div>

<div class="copyright">

© 2026 KOTA'S ANIME • DEMO STORE • Character artwork belongs to its respective rights holders.

</div>

</div>

</footer>

</body>
</html>
