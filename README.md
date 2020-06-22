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


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :posts,dependent: :destroy
- has_many :coments,dependent: :destroy


## profileテーブル
|Column|Type|Options|
|------|----|-------|
|text|introduction||
|image|string|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|memo|text|null: false|
|image|string|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :menus
- has_many :coments


## menusテーブル
|Column|Type|Options|
|------|----|-------|
|menu|string|null: false|
|weight_id|string|null: false|
|repetition_id|string|null: false|
|setcount_id|string|null: false|
|post_id|string|null: false|
### Association
- belongs_to :post
- belongs_to :repetition
- belongs_to :weight
- belongs_to :setcount


## comentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|post_id|references|null: false, foreign_key: true|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user



# Gem(active_hashを使用)

## weights
- id
- weight

## repetitions
- id
- repetition

## setcounts
- id
- setcount









