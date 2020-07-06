# アプリ名
トレーニング投稿

# 概要
* 日々のトレーニングを投稿できます。<br>
一言メモ、トレーニングメニュー5種類、写真

* ユーザーのプロフィール、写真を登録できます。

* RM計算機能<br>
  トレーニングの目的に応じて最適な重さと反復回数を知ることができます。<br>
  それに伴い、最大重量を自動計算出来ます。　
　
　
## 本番環境　
* デプロイ先<br>
https://bloc-chesterfield-74015.herokuapp.com/

* テストアカウント＆ID<br>
・アカウント　a@docomo.ne.jp<br>
・ID        1234567


## 制作背景
ユーザーがモチベーションを維持することに役立つと考えたからです。<br>
トレーニングは孤独な作業です。1人ではモチベーションを保つことは難しいですが、他ユーザーのトレーニングの投稿を確認し切磋琢磨できる環境が出来ます。<br>
又、ビジネスにもご活用して頂けます。<br>
例えば、パーソナルトレーナーであれば、プロフィールと写真を登録し、説明とリンクを貼るなどすれば顧客を誘導することができます。<br>

## DEMO
<img width="1440" alt="スクリーンショット 2020-07-06 12 29 23" src="https://user-images.githubusercontent.com/63388041/86553286-448f0280-bf85-11ea-992f-44ca26b26ad0.png">

## 工夫したポイント

## 使用技術(開発環境)

## 課題や今後実装したい機能

## DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|introduction|text||
|image|string||
|email|string|null: false|
|password|string|null: false|
### Association
- has_many :posts,dependent: :destroy


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|memo|text|null: false|
|menu1|text||
|menu2|text||
|menu3|text||
|menu4|text||
|menu5|text||
|image|string|
|user_id|references|null: false, foreign_key: true|
### Association
- belongs_to :user


## rmsテーブル
|Column|Type|Options|
|------|----|-------|
|use_weight|integer||
|reps|integer||
|user_id|references|null: false, foreign_key: true|
### Association
- has_many :users













