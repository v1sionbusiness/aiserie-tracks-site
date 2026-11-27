# Serve the Aiserie Tracks landing page with nginx.
# Works on Render.com (uses the PORT env var), GitHub Codespaces, Fly.io,
# and plain Docker (defaults to port 80).
FROM nginx:alpine

# nginx:alpine auto-renders /etc/nginx/templates/*.template into
# /etc/nginx/conf.d/*.conf with envsubst, so ${PORT} works everywhere.
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html style.css script.js logo.svg favicon.svg /usr/share/nginx/html/
COPY screenshots /usr/share/nginx/html/screenshots

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
