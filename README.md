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
- has_many :comments,dependent: :destroy
- has_one :profile, dependent: :destroy


## profileテーブル
|Column|Type|Options|
|------|----|-------|
|text|introduction|null: false|
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
- has_many :comments


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


## commentsテーブル
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




<!-- post -->
class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :memo , null: false
      t.text :menu,null: false
      t.string :post_image
      t.references :tag, null: false,foreign_key: true
      t.references :user, null: false,foreign_key: true
      t.timestamps
    end
  end
end

<!-- user -->
class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string  :username,null: false
      t.string  :email,null: false
      t.string  :password,null: false
      t.text    :profile
      t.string  :profile_image
      t.timestamps
    end
  end
end

<!-- coment -->
class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :text
      t.references :user, null: false,foreign_key: true
      t.references :post, null: false,foreign_key: true
      t.timestamps
    end
  end
end

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
### Association
- has_many :posts_tags_relations
- has_many :posts,  through:  :posts_tags_relations


## post_tag_relationsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|references|null: false, foreign_key: true|
|tag_id|references|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :tag
