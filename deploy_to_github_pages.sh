#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

# Check out gh-pages branch
git checkout gh-pages

# Pull master into it
git reset --hard master

# Compile
npm install
npm run compile

# Move app to /tmp
# TODO:
rm -rf /tmp/app
mv app /tmp/

# Then delete everything else (including this script)
rm -rf ./*

# Then move contents of app to top level
mv /tmp/app/* ./

# Commit and force push
git add *
git commit -a -m 'update'
git push -f

# Switch back to master
git checkout master

# Site code should now be at https://github.com/<user>/<project>/tree/gh-pages
# And should be live at https://<user>github.com/<project>