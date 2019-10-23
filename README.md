# Elm-Dev-Sample

## Create Project
```shell
mkdir elm-dev-sample && cd $_
npm init -y
elm init
touch src/Main.elm
```

write src/Main.elm  

add `"build": "elm make src/Main.elm --release/elm.js",` to package.json "scripts".  

## Build
```shell
npm run build
```
open [release/index.html](release/index.html) in your browser.  
in MacOS, `open release/index.html`.
