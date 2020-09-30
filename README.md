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

# アプリケーション概要 
- 篠原工務店 コーポーレートサイト <font color="brown">家を建てるために悩んでいる人を後押しできるように</font>
# URL
- https://shinohara-hp.herokuapp.com/
# テスト用アカウント
 email: aaa@aaa.com
 <br>password: santa0920
 
# 利用方法
- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
- 確認後、ログアウト処理をお願いします。
- 同時に複数の方がログインしている場合に、ログインできない可能性があります。
# 目指した課題解決
- 検索エンジン最適化を利用し、webページでの訪問者を増やしたいです。

# 洗い出した要件
| 機能 | 目的 | ストーリー（ユースケース）|
| --- |----- | --------------------- |
| ユーザー認証（管理者のみ）| 管理者のみがログインできるようにするため | mailとpasswordだけの簡易的なログイン方法にし管理者が億劫にならないようなログイン機能 |
| 施工例・Message投稿機能 | 施工例などの新規投稿を行うため | 外観と内観の写真（複数の写真）を投稿できるように、それにメッセージも添えれるようにする |
| 投稿一覧機能 | 投稿したものを一覧表示させるため | 一覧表示の所では題名を載せれるようにする/その後できたら一部のテキストだけ載せられるようにする |
| お問い合わせ機能 | クライアントがお問い合わせできるように | 訪問者が興味を持ってくれたときに簡単に管理者へお問い合わせできるようにする/お問い合わせのホームを作り、メールなどで送れるように設定をする |


# 実装した機能についてのGIFと説明
- APIを用いてyoutubeとgoogle mapの埋め込みの実装ができました。
# ローカルでの動作方法
'rails s'でサーバーを立ち上げ [local3000](http://localhost:3000/)にアクセスして頂きます。

# データベース設計
## users テーブル

| Column             | Type     | Options           |
| -------------------| -------- | ------------------|
| name               | string   | null: false       |
| email              | string   | null: false       |
| encrypted_password | string   | null: false       |

### Association
- has many constructions

## Constructionsテーブル

| Column             | Type       | Options                         |
| -------------------| ---------- | ------------------------------- |
| name               | string     | null: false                     |
| message            | text       | null: false                     |
| post_date          | date       | null: false                     |
| user               | references | null: false , foreign_key: true |

### Association
- has_one_attached :image
- belongs to :user

## active_storage_attachedテーブル

## contactsテーブル

| Column             | Type       | Options                         |
| -------------------| ---------- | ------------------------------- |
| name               | string     | null: false                     |
| message            | text       | null: false                     |

## posts テーブル
| Column             | Type       | Options                         |
| -------------------| ---------- | ------------------------------- |
| content            | text       | null: false                     |