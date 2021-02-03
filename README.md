# Andre Costa Blog  

Simple blog application developed with Ruby on Rails, with automated deployment on cloud server with capistrano. Includes some other features like: generating PDF certificates to a 3rd party costumer and a poll app to a Brazilian podcast public.

## Main Features

* Blog application with featured image, categories and tags
* Poll app
* Generating pdf certificates to a 3rd party costumer


## Main tecnolgies used

* Ruby on Rails
* Capistrano deployment on cloud server

## Steps to deploy

**Install Ruby dependencies**

`bundle install`

**Create Database**

`rails db:create`

**Run Migrations**

`rails db:migrate`

**Seed database**

`rails db:seed`

**Install CSS and JS depencies with NPM**

`npm install`
