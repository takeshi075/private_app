## アプリ名
トレーニング投稿

## 概要
* 日々のトレーニングを投稿できます。<br>
一言メモ、トレーニングメニュー5種類、写真

* ユーザーのプロフィール、写真を登録できます。

* RM計算機能<br>
  トレーニングの目的に応じて最適な重さと反復回数を知ることができます。<br>
  それに伴い、最大重量を自動計算できます。　
　
　
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
* トップページ<br>
<img width="1436" alt="スクリーンショット 2020-07-06 12 29 41" src="https://user-images.githubusercontent.com/63388041/86553388-933c9c80-bf85-11ea-8048-651dc90c9536.png">
<img width="1436" alt="スクリーンショット 2020-07-06 12 30 05" src="https://user-images.githubusercontent.com/63388041/86553411-a3547c00-bf85-11ea-81b3-9e751e03be26.png">
<img width="1436" alt="スクリーンショット 2020-07-06 12 30 27" src="https://user-images.githubusercontent.com/63388041/86553427-b10a0180-bf85-11ea-923d-90a8367743ef.png">
<img width="1436" alt="スクリーンショット 2020-07-06 12 30 39" src="https://user-images.githubusercontent.com/63388041/86553432-b49d8880-bf85-11ea-9ecf-f6f14b71ab0d.png">  

* ユーザーページ<br>
<img width="1436" alt="スクリーンショット 2020-07-06 12 49 18" src="https://user-images.githubusercontent.com/63388041/86553980-4bb71000-bf87-11ea-9b4f-b56fe0764846.png">
<img width="1436" alt="スクリーンショット 2020-07-06 12 49 58" src="https://user-images.githubusercontent.com/63388041/86553983-4ce83d00-bf87-11ea-8bc9-d8e76012739d.png">

* RM計算ページ<br>
<img width="1436" alt="スクリーンショット 2020-07-06 12 52 12" src="https://user-images.githubusercontent.com/63388041/86554211-f0395200-bf87-11ea-8056-533cd950cf77.png">
<img width="1436" alt="スクリーンショット 2020-07-06 12 52 33" src="https://user-images.githubusercontent.com/63388041/86554220-f3ccd900-bf87-11ea-88d8-8721a13235c4.png">

* RM計算結果ページ<br>
<img width="1436" alt="スクリーンショット 2020-07-06 12 56 14" src="https://user-images.githubusercontent.com/63388041/86554296-2f67a300-bf88-11ea-9606-78166c6ae942.png">


## 工夫したポイント
* トレーニング時の参考になる様にRM計算ページを実装しました。<br>
* 投稿画面を投稿後の画面レイアウトと一緒にしました。<br>

## 使用技術(開発環境)
MacBook Pro 13<br>
macOs 10.15.4<br>
rails 5.2.3<br>
PostgreSQL. Versions 9.1<br>

## 今後実装したい機能
* コメント機能<br>
ユーザー同士の交流を増やす為<br>

* いいね機能<br>
ユーザー同士の交流を増やす為<br>

* 投稿、ユーザー検索機能<br>
ユーザー同士の交流を増やす為

* 体重、体脂肪率の変動をグラフ化できる機能<br>
トレーニング継続のモチベーション維持の為

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













