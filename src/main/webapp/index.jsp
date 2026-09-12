from pathlib import Path

src = Path("/mnt/data/Pasted text(3).txt")
out = Path("/mnt/data/Kota_homepage.html")

html = src.read_text(encoding="utf-8")

# Rebrand the existing homepage while keeping its functionality/layout.
replacements = [
    ("<title>NexusShop — Modern E‑Commerce</title>", "<title>KOTA — Convenience Store</title>"),
    ("--bg: #fafaf8;", "--bg: #f4efe8;"),
    ("--bg-card: #ffffff;", "--bg-card: #fffaf3;"),
    ("--primary: #1a1a2e;", "--primary: #2b2118;"),
    ("--primary-light: #2d2d44;", "--primary-light: #4a3627;"),
    ("--accent: #e07a5f;", "--accent: #8b5e3c;"),
    ("--accent-light: #f4d0c4;", "--accent-light: #dfc4a8;"),
    ("--accent-dark: #c05a3e;", "--accent-dark: #684329;"),
    ("--muted: #6b6b7a;", "--muted: #76695f;"),
    ("--muted-light: #a0a0b0;", "--muted-light: #a89b90;"),
    ("--surface: #f0efed;", "--surface: #ebe1d5;"),
    ("--success: #2a9d8f;", "--success: #557a62;"),
    ("--warning: #e9c46a;", "--warning: #c99a4a;"),
    ("rgba(26, 26, 46, 0.06)", "rgba(43, 33, 24, 0.08)"),
    ("rgba(26, 26, 46, 0.10)", "rgba(43, 33, 24, 0.12)"),
    ("rgba(26, 26, 46, 0.20)", "rgba(43, 33, 24, 0.20)"),
    ("rgba(26, 26, 46, 0.04)", "rgba(43, 33, 24, 0.06)"),
    ("rgba(224, 122, 95, 0.30)", "rgba(139, 94, 60, 0.30)"),
    ("rgba(224, 122, 95, 0.10)", "rgba(139, 94, 60, 0.10)"),
    ("rgba(224, 122, 95, 0.20)", "rgba(139, 94, 60, 0.20)"),
    ("#1a1a2e 0%, #2d2d44 100%", "#2b2118 0%, #4a3627 100%"),
    ("<em class=\"fas fa-store-alt\"></em>\n                    <span>Nexus<span class=\"accent\">Shop</span></span>",
     "<em class=\"fas fa-store\"></em>\n                    <span>KOTA</span>"),
    ("<i class=\"fas fa-store-alt\"></i>\n                         <span>Nexus<span class=\"accent\">Shop</span></span>",
     "<i class=\"fas fa-store\"></i>\n                         <span>KOTA</span>"),
    ("<h1>Discover Premium <br>Essentials</h1>",
     "<h1>KOTA<br>Convenience Store</h1>"),
    ("<p>Curated fashion, tech & accessories with free shipping on your first order. Limited-time deals await.</p>",
     "<p>Your everyday neighborhood convenience store for snacks, beverages and everyday essentials.</p>"),
    ("<div class=\"badge\"><i class=\"fas fa-sparkles\"></i> New Collection 2026</div>",
     "<div class=\"badge\"><i class=\"fas fa-store\"></i> KOTA • Everyday Essentials</div>"),
    ("<button class=\"btn btn-primary\" id=\"shopNow\"><i class=\"fas fa-arrow-right\"></i> Shop Now</button>",
     "<button class=\"btn btn-primary\" id=\"shopNow\"><i class=\"fas fa-basket-shopping\"></i> Shop Now</button>"),
    ("<button class=\"btn btn-ghost\" id=\"exploreDeals\"><i class=\"fas fa-clock\"></i> Explore Deals</button>",
     "<button class=\"btn btn-ghost\" id=\"exploreDeals\"><i class=\"fas fa-tags\"></i> View Offers</button>"),
    ("<h2 id=\"cat-title\">Browse Categories</h2>",
     "<h2 id=\"cat-title\">Shop Categories</h2>"),
    ("<p>Find exactly what you're looking for</p>",
     "<p>Everyday convenience, all in one place</p>"),
    ("<h2 id=\"prod-title\">Trending Now</h2>",
     "<h2 id=\"prod-title\">Popular Picks</h2>"),
    ("<p>What's hot — popular picks from our community</p>",
     "<p>Customer favorites at KOTA</p>"),
    ("<h2 id=\"deals-title\">⚡ Flash Deal</h2>",
     "<h2 id=\"deals-title\">⚡ KOTA Special</h2>"),
    ("<p>Grab it before it's gone — limited stock</p>",
     "<p>Selected everyday essentials</p>"),
    ("<h3>MacBook Air M2</h3>",
     "<h3>KOTA Everyday Essentials</h3>"),
    ("<p class=\"desc\">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>",
     "<p class=\"desc\">A convenient selection of snacks, beverages and everyday store essentials.</p>"),
    ("<span class=\"price-big\">$999 <span class=\"old\">$1,199</span></span>",
     "<span class=\"price-big\">Special Offers</span>"),
    ("<p class=\"stock\">Only <strong>12</strong> items left — hurry!</p>",
     "<p class=\"stock\">Fresh stock available in store.</p>"),
    ("<button class=\"btn btn-primary\" id=\"buyDeal\"><i class=\"fas fa-cart-plus\"></i> Add to Cart</button>",
     "<button class=\"btn btn-primary\" id=\"buyDeal\"><i class=\"fas fa-basket-shopping\"></i> Shop Now</button>"),
    ("<h3 id=\"news-title\">Stay in the Loop</h3>",
     "<h3 id=\"news-title\">Stay Updated with KOTA</h3>"),
    ("<p>Get exclusive offers, early access & new arrivals</p>",
     "<p>Get updates on store offers and new arrivals</p>"),
    ("<p>Modern e‑commerce demo built with care. Quality products, seamless experience.</p>",
     "<p>KOTA — a simple, modern neighborhood convenience store experience.</p>"),
    ("&copy; <span id=\"year\"></span> NexusShop. All rights reserved.",
     "&copy; <span id=\"year\"></span> KOTA. All rights reserved."),
    ("<h5>Company</h5>", "<h5>About KOTA</h5>"),
]

for a, b in replacements:
    html = html.replace(a, b)

# Add a subtle tobacco-shop-inspired visual treatment without advertising or encouraging tobacco use.
extra_css = """
        /* KOTA brand treatment */
        .brand { text-transform: uppercase; letter-spacing: 1px; }
        .brand i { transform: rotate(-8deg); }
        .hero::after {
            content: '';
            position: absolute;
            right: 7%;
            bottom: 8%;
            width: 180px;
            height: 180px;
            border: 2px solid rgba(255,255,255,.14);
            border-radius: 50%;
            box-shadow: 0 0 0 18px rgba(255,255,255,.04), 0 0 0 38px rgba(255,255,255,.025);
            pointer-events: none;
        }
        .hero .badge { color: #ead4b8; background: rgba(139,94,60,.35); }
"""
html = html.replace("    </style>", extra_css + "    </style>", 1)

out.write_text(html, encoding="utf-8")
print(f"Created: {out}")
