#!/usr/bin/env sh

npm install

cp ./node_modules/jquery/dist/jquery.min.js page/js/

## Path needs to be corrected
sed -e 's/"images"/"..\/images"/' < ./node_modules/leaflet/dist/leaflet.js > page/js/leaflet.js

cp ./node_modules/leaflet/dist/leaflet.css page/css
cp ./node_modules/leaflet/dist/images/* page/images

cp ./node_modules/leaflet.fullscreen/Control.FullScreen.js page/js
cp ./node_modules/leaflet.fullscreen/icon*.png page/images
cp ./node_modules/leaflet.fullscreen/Control.FullScreen.css page/css

cp ./node_modules/leaflet.markercluster/dist/leaflet.markercluster.js page/js
cp ./node_modules/leaflet.markercluster/dist/MarkerCluster*.css page/css

cp ./node_modules/leaflet-loading/src/Control.Loading.css page/css
cp ./node_modules/leaflet-loading/src/Control.Loading.js page/js
