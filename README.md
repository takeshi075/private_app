# アプリ名
トレーニング投稿

# 概要
* 日々のトレーニングを投稿できます。  
  一言メモ、トレーニングメニュー5種類、写真

* ユーザーのプロフィール、写真を登録できます。

* RM計算機能
  トレーニングの目的に応じて最適な重さと反復回数を知ることができます。
  それに伴い、最大重量を自動計算出来ます。　
　
　
## 本番環境　
*デプロイ先
  https://bloc-chesterfield-74015.herokuapp.com/

*テストアカウント＆ID
  ・アカウント　a@docomo.ne.jp
  ・ID        1234567


## 制作背景
  ユーザーがモチベーションを維持することに役立つと考えたからです。
　トレーニングは孤独な作業です。
　1人ではモチベーションを保つことは難しいですが、他ユーザーのトレーニングの投稿を確認し切磋琢磨できる環　境が出来ます。
　
　又、ビジネスにもご活用して頂けます。
  例えば、パーソナルトレーナーであれば、プロフィールと写真を登録し、説明とリンクを貼るなどすれば顧客を誘導することができます。

　
・DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)
　
・工夫したポイント

・使用技術(開発環境)

・課題や今後実装したい機能

・DB設計

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













