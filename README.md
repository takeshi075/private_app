# アプリ名
トレーニング投稿

# 概要
* 日々のトレーニングを投稿できます。  
　(一言メモ、トレーニングメニュー5種類、写真）
* ユーザーのプロフィール、写真を登録できます。
* RM計算機能
 （トレーニングの目的に応じて最適な重さと反復回数を知ることができます。）　
　
　
・本番環境(デプロイ先　テストアカウント＆ID)
・制作背景(意図)
　⇒どんな課題や不便なことを解決するためにこのアプリを作ったのか。
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　⇒特に、デプロイがまだできていない場合はDEMOをつけることで見た目を企業側に伝えることができます。
・工夫したポイント
・使用技術(開発環境)
・課題や今後実装したい機能
・DB設計This README would normally document whatever steps are necessary to get the
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













