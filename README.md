# Aiserie Tracks — Landing Page

A professional marketing website for **Aiserie Tracks**, a jungle-green personal
finance tracker for Android, iPhone and the web. Built with vanilla HTML, CSS and
JavaScript — no build step, no dependencies, fully static.

## Live site

Once GitHub Pages is enabled (see below), the site is live at:

```
https://v1sionbusiness.github.io/aiserie-tracks-site/
```

## Files

| File | Purpose |
| --- | --- |
| `index.html` | Single-page marketing site (hero, features, wallets, privacy, download, FAQ, footer) |
| `styles.css` | Jungle-green glassmorphism design system, fully responsive |
| `script.js` | Mobile nav, scroll reveals, smooth-scroll anchors |
| `logo.svg` | Orbit-A monogram logo (vector, scalable) |
| `favicon.svg` | Favicon version of the logo |
| `.github/workflows/deploy.yml` | Auto-deploys `main` to GitHub Pages |

## Enable GitHub Pages (one-time setup)

1. Open the repo on GitHub → **Settings** → **Pages**.
2. Under **Build and deployment** → **Source**, select **GitHub Actions**.
3. The `Deploy to GitHub Pages` workflow will run automatically on the next push
   to `main`. The site is live in ~30 seconds.

## Run locally

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
