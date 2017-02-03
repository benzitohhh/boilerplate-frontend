#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

echo "Deploy to github pages..."
read -p "Are you sure? This will wipe any uncommited local changes" -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    # Check out gh-pages branch
    git checkout gh-pages

    # TODO: if error, give warning that probably need to create the branch (i.e. git checkout -b gh-pages)

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
    git push --set-upstream origin gh-pages

    # Switch back to master
    git checkout master
    npm install

    echo "Site should be live at https://<user>/github.com/<project>"
    echo "And code should now be at https://github.com/<user>/<project>/tree/gh-pages"

fi
