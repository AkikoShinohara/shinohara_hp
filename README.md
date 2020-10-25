# 篠原工務店 コーポレートサイト[実用化に向け開発中] 
[![Image from Gyazo](https://i.gyazo.com/12439456e0579717a319d302b5f172b4.jpg)](https://gyazo.com/12439456e0579717a319d302b5f172b4)


# app name
篠原工務店 コーポレートサイト

# URL
- https://shinohara-hp.herokuapp.com/

# Test account
 email: aaa@aaa.com
 <br>password: santa0920
 
# How to Use
- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
- 確認後、ログアウト処理をお願いします。
- 同時に複数の方がログインしている場合に、ログインできない可能性があります。

# 洗い出した要件
| 機能 | 目的 | ストーリー（ユースケース）|
| --- |----- | --------------------- |
| ユーザー認証（管理者のみ）| 管理者のみがログインできるようにするため | mailとpasswordだけの簡易的なログイン方法にし管理者が億劫にならないようなログイン機能 |
| 施工例・Message投稿機能 | 施工例などの新規投稿を行うため | 外観と内観の写真（複数の写真）を投稿できるように、それにメッセージも添えれるようにする |
| 投稿一覧機能 | 投稿したものを一覧表示させるため | 一覧表示の所では題名を載せれるようにする/その後できたら一部のテキストだけ載せられるようにする |
| お問い合わせ機能 | クライアントがお問い合わせできるように | 訪問者が興味を持ってくれたときに簡単に管理者へお問い合わせできるようにする/お問い合わせのホームを作り、メールなどで送れるように設定をする |


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