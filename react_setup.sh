#!/bin/sh

sudo apt-get update

echo Starting to create a frontend app with django
python3 ./manage.py startapp frontend
echo Done...

echo Installing Node js if is not installed
sudo apt install Node.js 
sudo apt install npm 
echo Installing COmpleted!

echo Starting to intall all the react library
npm init -y
npm i webpack webpack-cli --save-dev
npm i @babel/core babel-loader @babel/preset-env @babel/preset-react --save-dev
npm i react react-dom --save-dev
npm install @babel/plugin-proposal-class-properties
npm install react-router-dom
echo Done...

echo Moving directory...
mv -v babel.config.json ./frontend
mv -v webpack.config.js ./frontend
mv -vf templates ./frontend
mv -vf static ./frontend
mv -vf src ./frontend
echo All done...
