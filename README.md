# boilerplate-frontend

To run in development: `npm install; npm run dev`

To remove jquery/bootstrap: delete lines in index.html, and package.json

CSS is in `/src/main.css` (compiled via less-css, and inlined at the top of the body)

To deploy to github pages: `./deploy_to_github_pages.sh`

Still todo:
- threejs example
- react
- redux
- dockerfile (nginx)


i.e. possible deployments:
- github pages
- node server (w. possible proxy) - AWS, DigitalOcean, Rackspace etc...
- nginx (w. possible proxy to backend)
- within some frontend server (play, django, express, whatever...)
- CDN (Cloudfront, Akamai, etc... can also proxy to backend services)