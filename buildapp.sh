#!/bin/sh

sbcl --no-userinit --load lisp/electron-lisp-boilerplate.asd --eval "(cl-user::buildapp)"

# Package
mv ./lispapp ./lispapp.exe
npm i
npx @electron/packager --overwrite . $APP_NAME
