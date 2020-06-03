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
|username|string|null: false|
|email|string|null: false|
|password|string|null: false|
|profile|text||
|gender|integer|null: false|
|image|string|null: false|
### Association
- has_many :posts
- has_many :comments


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|image|string|
|tag_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :posts_tags_relations
- has_many  :tags,  through:  :posts_tags_relations


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
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :tag


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|post_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user


# Gem(active_hashを使用)

## gender
- id
- gender

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

