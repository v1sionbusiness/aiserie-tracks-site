# Aiserie Tracks — Landing Page

A professional marketing website for **Aiserie Tracks**, a jungle-green personal
finance tracker for Android, iPhone and the web. Built with vanilla HTML, CSS and
JavaScript — no build step, no dependencies, fully static.

## Live site

The site is live at:

```
https://v1sionbusiness.github.io/aiserie-tracks-site/
```

## One-click download

The "Download APK" buttons link directly to the signed APK:

```
https://github.com/ViztechStudios/aiserie-tracks/releases/download/v4.4.0/AiserieTracks-v4.4.0.apk
```

(Currently pinned to the v4.4.0 "Polish & Poise" release — a tag-pinned URL
like this never 404s. When v4.5.0 ships, bump the tag and filename in `index.html`.)

## Files

| File | Purpose |
| --- | --- |
| `index.html` | Single-page marketing site (hero, features, wallets, preview, privacy, download, FAQ, footer) |
| `style.css` | Jungle-green glassmorphism design system, fully responsive |
| `script.js` | Mobile nav, scroll reveals, smooth-scroll anchors |
| `logo.svg` | Orbit-A monogram logo (vector, scalable) |
| `favicon.svg` | Favicon version of the logo |
| `screenshots/` | Real app screenshots (SVG-wrapped JPEGs, brand labels masked by privacy chips) |
| `Dockerfile` | nginx-based container — works on Render.com, Codespaces, Fly.io, plain Docker |
| `nginx.conf.template` | Server config with ${PORT} support |
| `.github/workflows/jekyll-gh-pages.yml` | Deploys `main` to GitHub Pages |

## Docker (Render.com / Codespaces / anywhere)

```bash
docker build -t aiserie-site .
docker run -p 8080:80 aiserie-site
# visit http://localhost:8080
```

On **Render.com**: create a new Web Service pointing at this repo — Render detects
the Dockerfile automatically and routes traffic to the container (the PORT env var
is honored via the nginx template). This fixes the earlier "failed to read
dockerfile" build error.

## Run locally (no Docker)

The site is plain static HTML — open `index.html` in any browser, or serve it:

```bash
python3 -m http.server 8080
# visit http://localhost:8080
```

## Reference

This landing page promotes the Aiserie Tracks app at
[github.com/ViztechStudios/aiserie-tracks](https://github.com/ViztechStudios/aiserie-tracks).
The app itself (Expo / React Native / TypeScript) is a separate project; this repo
only contains the marketing website.

---

Made with care · MIT licensed
