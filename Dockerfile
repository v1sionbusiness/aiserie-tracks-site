# Serve the Aiserie Tracks landing page with nginx.
# Works on Render.com (binds to $PORT), GitHub Codespaces, Fly.io and plain Docker.
FROM nginx:alpine

# The nginx:alpine entrypoint renders /etc/nginx/templates/*.template into
# /etc/nginx/conf.d/*.conf with envsubst. It only substitutes variables that
# are DEFINED in the environment — so PORT must always have a value.
# Render sets PORT=10000 for web services; this default covers local runs,
# Codespaces and any other Docker host.
ENV PORT=10000

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html style.css script.js logo.svg favicon.svg /usr/share/nginx/html/
COPY screenshots /usr/share/nginx/html/screenshots

EXPOSE 10000

CMD ["nginx", "-g", "daemon off;"]
