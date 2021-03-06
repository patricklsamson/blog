<!-- # README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ... -->

# Blog

This rails project is a part of my compilation of Avion School Batch 8 Activities. It is focused on familiarizing the fundamentals of Ruby on Rails especially how it was separated into three components Model-View-Controller (MVC). It is deployed on Heroku and can be accessed through this [link](https://patricklsamson-blog.herokuapp.com/).

Note: Kindly check "[db/seeds.rb](https://github.com/patricklsamson/blog/blob/main/db/seeds.rb)" for initial data to assist you in exploring around the app.

---

## Ruby Version

Ruby 2.7.3

## System Dependencies

- Rails 6.1.4
- NodeJS 12.22.1
- Yarn 1.22.10
- PostgreSQL 13.3

## Configuration

```shell
bundle install
yarn install --check-files
bundle exec rails webpacker:install
```

## Database Creation

```shell
rails db:create
```

## Database Initialization

```shell
rails db:migrate
rails db:seed
```

or (skip "rails db:create")

```shell
rails db:setup
```

## Deployment Instructions

```shell
heroku login
git push heroku main
heroku run rails db:migrate
heroku run rails db:seed
```

---

Fair Use
