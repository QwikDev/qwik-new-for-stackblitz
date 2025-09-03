#!/usr/bin/env bash

set -e
find . ! \( -name .git -o -path './.git/*' -o -name .stackblitzrc -o -name update-repo.sh \) -delete

npm create -y qwik@latest empty app --installDeps --force
mv app/* app/.* .
rmdir app
npm i

echo 'Now create a new commit with the version number and push it'
