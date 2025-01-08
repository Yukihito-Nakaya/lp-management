# README

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

* ...

# コマンドシート
$docker compose run web rails new . --force --database=postgresql

docker compose run web rails new . --css=tailwind --javascript=esbuild --force --database=postgresql 

$docker compose run web bash


/myapp# bundle install

docker compose build 

docker compose up


# React導入
bundle add jsbundling-rails
yarn add react react-dom