<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Kota's Smoking Shop</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

<style>
:root{
    --bg:#07070b;
    --bg2:#0d0d16;
    --card:rgba(255,255,255,.065);
    --card-hover:rgba(255,255,255,.11);
    --text:#fff;
    --muted:#9998aa;
    --pink:#ff2d95;
    --purple:#8b5cf6;
    --cyan:#22d3ee;
    --lime:#b7ff3c;
    --orange:#ff9b52;
    --border:rgba(255,255,255,.1);
    --radius:24px;
    --shadow:0 25px 70px rgba(0,0,0,.4);
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
    font-family:Inter,system-ui,sans-serif;
    background:
        radial-gradient(circle at 5% 5%,rgba(255,45,149,.13),transparent 27%),
        radial-gradient(circle at 95% 12%,rgba(34,211,238,.1),transparent 25%),
        linear-gradient(180deg,var(--bg),var(--bg2));
    color:var(--text);
    min-height:100vh;
}

body:before{
    content:"";
    position:fixed;
    inset:0;
    pointer-events:none;
    opacity:.025;
    background-image:
        linear-gradient(rgba(255,255,255,.8) 1px,transparent 1px),
        linear-gradient(90deg,rgba(255,255,255,.8) 1px,transparent 1px);
    background-size:42px 42px;
    z-index:-1;
}

a{
    color:inherit;
    text-decoration:none;
}

button{
    font:inherit;
    cursor:pointer;
    border:0;
}

.container{
    width:100%;
    max-width:1320px;
    margin:auto;
    padding:0 24px;
}

/* ================= HEADER ================= */

header{
    position:sticky;
    top:0;
    z-index:1000;
    background:rgba(7,7,11,.75);
    backdrop-filter:blur(22px);
    border-bottom:1px solid var(--border);
}

.header-inner{
    min-height:74px;
    display:flex;
    align-items:center;
    justify-content:space-between;
    gap:20px;
}

.logo{
    display:flex;
    align-items:center;
    gap:11px;
    font-size:20px;
    font-weight:900;
    letter-spacing:-1px;
    white-space:nowrap;
}

.logo-icon{
    width:43px;
    height:43px;
    border-radius:14px;
    display:grid;
    place-items:center;
    background:linear-gradient(135deg,var(--pink),var(--purple));
    box-shadow:0 0 35px rgba(255,45,149,.3);
}

.logo-gradient{
    background:linear-gradient(90deg,var(--pink),var(--cyan));
    -webkit-background-clip:text;
    background-clip:text;
    color:transparent;
}

nav{
    display:flex;
    align-items:center;
    gap:4px;
}

nav a{
    padding:9px 14px;
    border-radius:999px;
    color:var(--muted);
    font-size:13px;
    font-weight:700;
    transition:.2s;
}

nav a:hover,
nav a.active{
    background:rgba(255,255,255,.08);
    color:#fff;
}

.header-actions{
    display:flex;
    align-items:center;
    gap:7px;
}

.icon-btn{
    width:41px;
    height:41px;
    display:grid;
    place-items:center;
    border-radius:50%;
    color:#fff;
    background:rgba(255,255,255,.06);
    border:1px solid var(--border);
    transition:.2s;
}

.icon-btn:hover{
    transform:translateY(-2px);
    background:linear-gradient(135deg,var(--pink),var(--purple));
}

.mobile-btn{
    display:none;
}

/* ================= HERO ================= */

.hero{
    position:relative;
    min-height:610px;
    margin:20px 12px 0;
    border:1px solid var(--border);
    border-radius:34px;
    overflow:hidden;
    display:flex;
    align-items:center;
    background:
        linear-gradient(90deg,rgba(5,5,9,.96),rgba(5,5,9,.72),rgba(5,5,9,.25)),
        url("https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?auto=format&fit=crop&w=1800&q=85")
        center/cover;
    box-shadow:var(--shadow);
}

.hero:after{
    content:"";
    position:absolute;
    width:500px;
    height:500px;
    right:-170px;
    top:-150px;
    border-radius:50%;
    background:linear-gradient(135deg,var(--pink),var(--purple),var(--cyan));
    filter:blur(85px);
    opacity:.22;
}

.hero-content{
    position:relative;
    z-index:2;
    max-width:760px;
    padding:75px 0;
}

.eyebrow{
    display:inline-flex;
    align-items:center;
    gap:8px;
    padding:8px 14px;
    margin-bottom:21px;
    border-radius:999px;
    color:#ff91c9;
    background:rgba(255,45,149,.12);
    border:1px solid rgba(255,45,149,.28);
    font-size:10px;
    font-weight:900;
    letter-spacing:.9px;
}

.hero h1{
    font-size:clamp(48px,7vw,88px);
    line-height:.92;
    letter-spacing:-5px;
    font-weight:900;
    margin-bottom:23px;
}

.gradient{
    background:linear-gradient(90deg,var(--pink),var(--purple),var(--cyan));
    -webkit-background-clip:text;
    background-clip:text;
    color:transparent;
}

.hero p{
    max-width:590px;
    color:#bdbcca;
    font-size:16px;
    line-height:1.75;
    margin-bottom:29px;
}

.hero-buttons{
    display:flex;
    gap:12px;
    flex-wrap:wrap;
}

.btn{
    display:inline-flex;
    align-items:center;
    justify-content:center;
    gap:9px;
    padding:14px 23px;
    border-radius:999px;
    color:white;
    font-size:13px;
    font-weight:800;
    transition:.2s;
}

.btn-primary{
    background:linear-gradient(100deg,var(--pink),var(--purple));
    box-shadow:0 12px 35px rgba(255,45,149,.25);
}

.btn-primary:hover{
    transform:translateY(-3px) scale(1.02);
    box-shadow:0 18px 45px rgba(139,92,246,.35);
}

.btn-secondary{
    background:rgba(255,255,255,.08);
    border:1px solid var(--border);
}

.btn-secondary:hover{
    background:rgba(255,255,255,.14);
    transform:translateY(-3px);
}

/* ================= SECTIONS ================= */

section{
    padding:68px 0;
}

.section-heading{
    display:flex;
    justify-content:space-between;
    align-items:end;
    margin-bottom:29px;
}

.section-heading h2{
    font-size:31px;
    font-weight:900;
    letter-spacing:-1.5px;
}

.section-heading p{
    margin-top:6px;
    color:var(--muted);
    font-size:13px;
}

/* ================= CATEGORY ================= */

.categories{
    display:grid;
    grid-template-columns:repeat(5,1fr);
    gap:15px;
}

.category{
    min-height:155px;
    padding:22px;
    border-radius:22px;
    background:var(--card);
    border:1px solid var(--border);
    transition:.25s;
    position:relative;
    overflow:hidden;
}

.category:hover{
    transform:translateY(-8px) rotate(-1deg);
    background:var(--card-hover);
    border-color:rgba(255,45,149,.4);
    box-shadow:var(--shadow);
}

.category-icon{
    width:54px;
    height:54px;
    display:grid;
    place-items:center;
    margin-bottom:18px;
    border-radius:17px;
    background:linear-gradient(
        135deg,
        rgba(255,45,149,.17),
        rgba(34,211,238,.13)
    );
    color:var(--cyan);
    font-size:22px;
}

.category h3{
    font-size:14px;
    margin-bottom:5px;
}

.category p{
    color:var(--muted);
    font-size:11px;
}

/* ================= PRODUCTS ================= */

.products{
    display:grid;
    grid-template-columns:repeat(4,1fr);
    gap:18px;
}

.product{
    overflow:hidden;
    border-radius:23px;
    background:var(--card);
    border:1px solid var(--border);
    transition:.25s;
}

.product:hover{
    transform:translateY(-8px);
    border-color:rgba(139,92,246,.5);
    box-shadow:var(--shadow);
}

.product-image{
    height:245px;
    position:relative;
    overflow:hidden;
    background:#15151e;
}

.product-image img{
    width:100%;
    height:100%;
    object-fit:cover;
    transition:.5s cubic-bezier(.2,.8,.2,1);
}

.product:hover .product-image img{
    transform:scale(1.08);
}

.tag{
    position:absolute;
    top:12px;
    left:12px;
    z-index:2;
    padding:5px 10px;
    border-radius:999px;
    background:var(--lime);
    color:#111;
    font-size:9px;
    font-weight:900;
}

.heart{
    position:absolute;
    top:11px;
    right:11px;
    z-index:3;
    width:37px;
    height:37px;
    border-radius:50%;
    color:white;
    background:rgba(0,0,0,.55);
    border:1px solid rgba(255,255,255,.12);
}

.product-body{
    padding:17px;
}

.product-brand{
    color:var(--cyan);
    font-size:10px;
    font-weight:900;
    text-transform:uppercase;
    letter-spacing:.8px;
}

.product h3{
    margin:6px 0 9px;
    font-size:15px;
}

.product-description{
    min-height:35px;
    color:var(--muted);
    font-size:11px;
    line-height:1.55;
}

.product-footer{
    display:flex;
    align-items:center;
    justify-content:space-between;
    margin-top:16px;
}

.price{
    font-size:18px;
    font-weight:900;
}

.view-btn{
    padding:9px 13px;
    border-radius:11px;
    color:white;
    background:rgba(255,255,255,.08);
    border:1px solid var(--border);
    font-size:10px;
    font-weight:900;
}

.view-btn:hover{
    background:linear-gradient(100deg,var(--pink),var(--purple));
}

/* ================= FEATURE ================= */

.feature{
    display:grid;
    grid-template-columns:1fr 1fr;
    min-height:390px;
    overflow:hidden;
    border-radius:30px;
    border:1px solid var(--border);
    background:linear-gradient(135deg,#24102e,#101727);
    box-shadow:var(--shadow);
}

.feature-image{
    min-height:330px;
    background:
        url("https://images.unsplash.com/photo-1547887538-e3a2f32cb1cc?auto=format&fit=crop&w=1000&q=85")
        center/cover;
}

.feature-content{
    display:flex;
    flex-direction:column;
    justify-content:center;
    padding:50px;
}

.feature-content small{
    color:var(--pink);
    font-weight:900;
    letter-spacing:1px;
    margin-bottom:11px;
}

.feature-content h2{
    max-width:500px;
    font-size:39px;
    line-height:1;
    letter-spacing:-2px;
    margin-bottom:16px;
}

.feature-content p{
    max-width:470px;
    color:var(--muted);
    font-size:13px;
    line-height:1.7;
    margin-bottom:23px;
}

/* ================= COLLECTION CARDS ================= */

.collection-grid{
    display:grid;
    grid-template-columns:repeat(3,1fr);
    gap:16px;
}

.collection{
    padding:27px;
    border-radius:23px;
    background:var(--card);
    border:1px solid var(--border);
    transition:.25s;
}

.collection:hover{
    transform:translateY(-6px);
    background:var(--card-hover);
}

.collection i{
    color:var(--pink);
    font-size:25px;
    margin-bottom:18px;
}

.collection h3{
    font-size:16px;
    margin-bottom:8px;
}

.collection p{
    color:var(--muted);
    font-size:12px;
    line-height:1.65;
}

/* ================= NOTICE ================= */

.notice{
    display:flex;
    align-items:center;
    gap:15px;
    padding:23px;
    border-radius:19px;
    background:rgba(255,155,82,.08);
    border:1px solid rgba(255,155,82,.22);
    color:#ffc39e;
    font-size:12px;
    line-height:1.65;
}

.notice i{
    color:var(--orange);
    font-size:23px;
}

/* ================= FOOTER ================= */

footer{
    padding:52px 0 25px;
    border-top:1px solid var(--border);
}

.footer-grid{
    display:grid;
    grid-template-columns:2fr 1fr 1fr 1fr;
    gap:40px;
    margin-bottom:35px;
}

footer h4{
    margin-bottom:13px;
    font-size:13px;
}

footer p,
footer a{
    color:var(--muted);
    font-size:12px;
    line-height:2;
}

footer a:hover{
    color:var(--cyan);
}

.socials{
    display:flex;
    gap:8px;
    margin-top:15px;
}

.socials a{
    width:39px;
    height:39px;
    display:grid;
    place-items:center;
    border-radius:12px;
    background:rgba(255,255,255,.06);
    border:1px solid var(--border);
}

.socials a:hover{
    color:white;
    background:linear-gradient(135deg,var(--pink),var(--purple));
}

.copyright{
    padding-top:20px;
    border-top:1px solid var(--border);
    text-align:center;
    color:#626276;
    font-size:10px;
}

/* ================= RESPONSIVE ================= */

@media(max-width:1100px){

    .products{
        grid-template-columns:repeat(3,1fr);
    }

    .categories{
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

    .mobile-btn{
        display:grid;
    }

    .hero{
        min-height:540px;
    }

    .hero h1{
        font-size:55px;
        letter-spacing:-3px;
    }

    .products{
        grid-template-columns:repeat(2,1fr);
    }

    .categories{
        grid-template-columns:repeat(2,1fr);
    }

    .feature{
        grid-template-columns:1fr;
    }

    .feature-content{
        padding:36px;
    }

    .collection-grid{
        grid-template-columns:1fr;
    }
}

@media(max-width:520px){

    .container{
        padding:0 14px;
    }

    .header-inner{
        min-height:66px;
    }

    .hero{
        margin:10px 6px 0;
        min-height:490px;
        border-radius:25px;
    }

    .hero h1{
        font-size:42px;
        letter-spacing:-2px;
    }

    .hero p{
        font-size:13px;
    }

    .products{
        gap:10px;
    }

    .product-image{
        height:175px;
    }

    .product-body{
        padding:12px;
    }

    .product h3{
        font-size:12px;
    }

    .product-description{
        font-size:10px;
    }

    .price{
        font-size:15px;
    }

    .view-btn{
        padding:7px 9px;
        font-size:9px;
    }

    .section-heading h2{
        font-size:24px;
    }

    .footer-grid{
        grid-template-columns:1fr;
        gap:22px;
    }

    .feature-content h2{
        font-size:30px;
    }

    .notice{
        align-items:flex-start;
    }
}
</style>
</head>

<body>

<header>

    <div class="container header-inner">

        <a href="#" class="logo">

            <div class="logo-icon">
                <i class="fa-solid fa-store"></i>
            </div>

            Kota's <span class="logo-gradient">Smoking Shop</span>

        </a>

        <nav>

            <a href="#" class="active">Home</a>
            <a href="#categories">Collections</a>
            <a href="#accessories">Accessories</a>
            <a href="#featured">Featured</a>
            <a href="#about">About</a>

        </nav>

        <div class="header-actions">

            <button class="icon-btn" id="searchBtn">
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>

            <button class="icon-btn">
                <i class="fa-regular fa-heart"></i>
            </button>

            <button class="icon-btn mobile-btn" id="menuBtn">
                <i class="fa-solid fa-bars"></i>
            </button>

        </div>

    </div>

</header>


<main>

<!-- ================= HERO ================= -->

<section class="hero">

    <div class="container">

        <div class="hero-content">

            <div class="eyebrow">
                <i class="fa-solid fa-sparkles"></i>
                KOTA'S • NEXT-GEN ACCESSORIES
            </div>

            <h1>
                BUILD YOUR<br>
                <span class="gradient">SETUP.</span>
            </h1>

            <p>
                Discover modern hookah equipment, glassware,
                rolling accessories, storage solutions and
                premium lifestyle gear — all in one place.
            </p>

            <div class="hero-buttons">

                <a href="#categories" class="btn btn-primary">
                    Explore Collection
                    <i class="fa-solid fa-arrow-right"></i>
                </a>

                <a href="#featured" class="btn btn-secondary">
                    Featured Picks
                </a>

            </div>

        </div>

    </div>

</section>


<!-- ================= CATEGORIES ================= -->

<section id="categories">

    <div class="container">

        <div class="section-heading">

            <div>
                <h2>Shop Your Vibe</h2>
                <p>Modern equipment and accessories.</p>
            </div>

        </div>

        <div class="categories">

            <div class="category">
                <div class="category-icon">
                    <i class="fa-solid fa-bong"></i>
                </div>
                <h3>Hookah Equipment</h3>
                <p>Modern hookah hardware</p>
            </div>

            <div class="category">
                <div class="category-icon">
                    <i class="fa-solid fa-fire"></i>
                </div>
                <h3>Rolling Accessories</h3>
                <p>Trays, papers & tools</p>
            </div>

            <div class="category">
                <div class="category-icon">
                    <i class="fa-solid fa-box"></i>
                </div>
                <h3>Storage Gear</h3>
                <p>Cases & organizers</p>
            </div>

            <div class="category">
                <div class="category-icon">
                    <i class="fa-solid fa-wand-magic-sparkles"></i>
                </div>
                <h3>Cleaning Gear</h3>
                <p>Care & maintenance</p>
            </div>

            <div class="category">
                <div class="category-icon">
                    <i class="fa-solid fa-gift"></i>
                </div>
                <h3>Gift Collection</h3>
                <p>Premium lifestyle gifts</p>
            </div>

        </div>

    </div>

</section>


<!-- ================= ACCESSORIES ================= -->

<section id="accessories">

    <div class="container">

        <div class="section-heading">

            <div>
                <h2>Accessory Drop</h2>
                <p>Fresh equipment for your collection.</p>
            </div>

        </div>

        <div class="products">


            <article class="product">

                <div class="product-image">

                    <img
                        src="https://images.unsplash.com/photo-1547887538-e3a2f32cb1cc?auto=format&fit=crop&w=700&q=85"
                        alt="Glass accessory"
                    >

                    <span class="tag">FEATURED</span>

                    <button class="heart">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                </div>

                <div class="product-body">

                    <div class="product-brand">
                        Kota Select
                    </div>

                    <h3>Premium Glass Piece</h3>

                    <p class="product-description">
                        Modern glassware designed for display
                        and accessory use.
                    </p>

                    <div class="product-footer">

                        <span class="price">$89</span>

                        <button class="view-btn">
                            VIEW
                        </button>

                    </div>

                </div>

            </article>


            <article class="product">

                <div class="product-image">

                    <img
                        src="https://images.unsplash.com/photo-1524678606370-a47ad25cb82a?auto=format&fit=crop&w=700&q=85"
                        alt="Hookah equipment"
                    >

                    <span class="tag">HOT</span>

                    <button class="heart">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                </div>

                <div class="product-body">

                    <div class="product-brand">
                        Kota Select
                    </div>

                    <h3>Modern Hookah Setup</h3>

                    <p class="product-description">
                        Contemporary hookah equipment and
                        compatible accessories.
                    </p>

                    <div class="product-footer">

                        <span class="price">$149</span>

                        <button class="view-btn">
                            VIEW
                        </button>

                    </div>

                </div>

            </article>


            <article class="product">

                <div class="product-image">

                    <img
                        src="https://images.unsplash.com/photo-1544816155-12df9643f363?auto=format&fit=crop&w=700&q=85"
                        alt="Storage case"
                    >

                    <button class="heart">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                </div>

                <div class="product-body">

                    <div class="product-brand">
                        Urban Gear
                    </div>

                    <h3>Travel Storage Case</h3>

                    <p class="product-description">
                        Compact protective storage for
                        accessories and equipment.
                    </p>

                    <div class="product-footer">

                        <span class="price">$39</span>

                        <button class="view-btn">
                            VIEW
                        </button>

                    </div>

                </div>

            </article>


            <article class="product">

                <div class="product-image">

                    <img
                        src="https://images.unsplash.com/photo-1584634731339-252c581abfc5?auto=format&fit=crop&w=700&q=85"
                        alt="Cleaning accessories"
                    >

                    <span class="tag">NEW</span>

                    <button class="heart">
                        <i class="fa-regular fa-heart"></i>
                    </button>

                </div>

                <div class="product-body">

                    <div class="product-brand">
                        Kota Tools
                    </div>

                    <h3>Cleaning Tool Kit</h3>

                    <p class="product-description">
                        Equipment-care accessories for
                        cleaning and maintenance.
                    </p>

                    <div class="product-footer">

                        <span class="price">$29</span>

                        <button class="view-btn">
                            VIEW
                        </button>

                    </div>

                </div>

            </article>

        </div>

    </div>

</section>


<!-- ================= FEATURE ================= -->

<section id="featured">

    <div class="container">

        <div class="feature">

            <div class="feature-image"></div>

            <div class="feature-content">

                <small>THE KOTA'S EDIT</small>

                <h2>
                    BUILD A
                    <span class="gradient">CLEAN SETUP.</span>
                </h2>

                <p>
                    Explore premium hookah equipment,
                    glassware, storage and maintenance
                    accessories selected for a modern
                    lifestyle aesthetic.
                </p>

                <div>
                    <a href="#accessories" class="btn btn-primary">
                        Explore Gear
                        <i class="fa-solid fa-arrow-right"></i>
                    </a>
                </div>

            </div>

        </div>

    </div>

</section>


<!-- ================= COLLECTION ================= -->

<section>

    <div class="container">

        <div class="section-heading">

            <div>
                <h2>Everything For Your Setup</h2>
                <p>Modern accessory categories in one place.</p>
            </div>

        </div>

        <div class="collection-grid">

            <div class="collection">

                <i class="fa-solid fa-bong"></i>

                <h3>Hookah Equipment</h3>

                <p>
                    Hookah hardware, bases, stems, hoses,
                    bowls and compatible accessories.
                </p>

            </div>


            <div class="collection">

                <i class="fa-solid fa-layer-group"></i>

                <h3>Rolling Accessories</h3>

                <p>
                    Trays, storage solutions, rolling tools
                    and related accessory equipment.
                </p>

            </div>


            <div class="collection">

                <i class="fa-solid fa-screwdriver-wrench"></i>

                <h3>Maintenance Gear</h3>

                <p>
                    Cleaning brushes, cases and equipment
                    care accessories.
                </p>

            </div>

        </div>

    </div>

</section>


<!-- ================= NOTICE ================= -->

<section>

    <div class="container">

        <div class="notice">

            <i class="fa-solid fa-triangle-exclamation"></i>

            <div>
                <strong>Responsible-use notice:</strong>
                This demo showcases smoking-related accessories
                and equipment only. Regulated tobacco and nicotine
                products are not included. Follow all applicable
                local laws and age restrictions.
            </div>

        </div>

    </div>

</section>

</main>


<!-- ================= FOOTER ================= -->

<footer id="about">

    <div class="container">

        <div class="footer-grid">

            <div>

                <a href="#" class="logo">

                    <div class="logo-icon">
                        <i class="fa-solid fa-store"></i>
                    </div>

                    Kota's
                    <span class="logo-gradient">
                        Smoking Shop
                    </span>

                </a>

                <p style="margin-top:12px;max-width:320px;">
                    A modern destination for hookah equipment,
                    smoking accessories and lifestyle gear.
                </p>

                <div class="socials">

                    <a href="#">
                        <i class="fa-brands fa-instagram"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-x-twitter"></i>
                    </a>

                    <a href="#">
                        <i class="fa-brands fa-facebook-f"></i>
                    </a>

                </div>

            </div>


            <div>

                <h4>SHOP</h4>

                <a href="#categories">Collections</a><br>
                <a href="#accessories">Accessories</a><br>
                <a href="#featured">Featured</a>

            </div>


            <div>

                <h4>SUPPORT</h4>

                <a href="#">Help Center</a><br>
                <a href="#">Shipping</a><br>
                <a href="#">Returns</a>

            </div>


            <div>

                <h4>LEGAL</h4>

                <a href="#">Privacy</a><br>
                <a href="#">Terms</a><br>
                <a href="#">Responsible Use</a>

            </div>

        </div>


        <div class="copyright">
            © 2026 Kota's Smoking Shop • Accessories & lifestyle equipment
        </div>

    </div>

</footer>


<script>

/* ================= WISHLIST ================= */

document.querySelectorAll(".heart").forEach(button => {

    button.addEventListener("click",function(){

        const icon = this.querySelector("i");

        icon.classList.toggle("fa-regular");
        icon.classList.toggle("fa-solid");

        if(icon.classList.contains("fa-solid")){

            this.style.background =
                "linear-gradient(135deg,#ff2d95,#8b5cf6)";

        }else{

            this.style.background = "";

        }

    });

});


/* ================= SEARCH ================= */

document.getElementById("searchBtn").addEventListener("click",function(){

    const query = prompt("Search accessories:");

    if(query && query.trim()){

        const value = query.toLowerCase().trim();

        document.querySelectorAll(".product").forEach(product => {

            const text = product.innerText.toLowerCase();

            product.style.display =
                text.includes(value) ? "" : "none";

        });

        document
            .getElementById("accessories")
            .scrollIntoView({
                behavior:"smooth"
            });

    }

});


/* ================= MOBILE MENU ================= */

const menuBtn = document.getElementById("menuBtn");
const nav = document.querySelector("nav");

menuBtn.addEventListener("click",function(){

    if(nav.style.display === "flex"){

        nav.style.display = "";

    }else{

        nav.style.display = "flex";
        nav.style.position = "absolute";
        nav.style.top = "66px";
        nav.style.left = "12px";
        nav.style.right = "12px";
        nav.style.flexDirection = "column";
        nav.style.padding = "12px";
        nav.style.borderRadius = "18px";
        nav.style.background = "rgba(14,14,23,.98)";
        nav.style.border = "1px solid rgba(255,255,255,.1)";

    }

});


/* ================= VIEW BUTTONS ================= */

document.querySelectorAll(".view-btn").forEach(button => {

    button.addEventListener("click",function(){

        const product =
            this.closest(".product").querySelector("h3").textContent;

        alert(
            product +
            "\n\nProduct details interface ready."
        );

    });

});


/* ================= NAVIGATION ================= */

document.querySelectorAll("nav a").forEach(link => {

    link.addEventListener("click",function(){

        document
            .querySelectorAll("nav a")
            .forEach(item => item.classList.remove("active"));

        this.classList.add("active");

    });

});


</script>

</body>
</html>
