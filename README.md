# README
Dependencies
* Ruby version- 2.7.0
* Rails version- 6.0.4
* Database - postgres
* Frontend- Reactjs code
* nvm-v14.16.0
* node-v14.16.0
* npm-6.14.11
* yarn-1.22.5

Steps to recreate:
cd musicapp
bundle install
rake db:setup
rake db:migrate
rake db:seed
npm install

Run rails s and bin/webpack-dev-server when executing.


The app works using reactonrails gem rendering react js view. Its a single page app list all the fetched data from spotify. 
Data is fetched from spotify and seeded to the database when rake db:seed is run. 

Since index action was not done as an API, i have created search API seperately without writing frontend code for it.

Heroku deployment didnt work out due to some dependency issues. 



