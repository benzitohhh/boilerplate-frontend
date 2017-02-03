# boilerplate-frontend

To remove jquery/bootstrap: delete lines in index.html, and package.json

Still todo:

- deploy to github-pages script
- jquery/bootrap: add to npm build (BIG files - no need to include in the webpack build)
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