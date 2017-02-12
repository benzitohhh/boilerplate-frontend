# boilerplate-frontend

To run in development: `npm install; npm run dev`

To remove jquery/bootstrap: delete lines in index.html, and package.json

CSS is in `/src/main.css` (compiled via less-css, and inlined at the top of the body)

To deploy to github pages: `./deploy_to_github_pages.sh`

Still todo:
- put everything in a subfolder "static"
- dockerfile for nginx, with proxy
- npm run proxy-dev (starts webpack dev, but also an http-server. Http-server proxies to webpack dev, but also a frontend server
- frontend server with login/users example (i.e. in a subfolder "frontend-service"
- threejs example
- react
- redux



i.e. possible deployments:
- github pages
- node server (w. possible proxy) - AWS, DigitalOcean, Rackspace etc...
- nginx (w. possible proxy to backend)
- within some frontend server (play, django, express, whatever...)
- CDN (Cloudfront, Akamai, netlify etc... can also proxy to backend services)
