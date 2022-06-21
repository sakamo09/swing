
アプリケーション名
swing

アプリケーション概要
サークルメンバー同士で、おすすめのバドミントングッズを紹介、共有することができる

URL
https://swing-37856.herokuapp.com/

テスト用アカウント


Basic認証ID admin
Basic認証 2222

利用方法

アプリケーションを作成した背景













# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| email              | string              | null: false, unique: true |メールアドレス
| encrypted_password | string              | null: false               |パスワード
| nickname           | string              | null: false               |ニックネーム
| experience_id      | string              | null: false               |バド歴
| profile            | text                | null: false               |自己紹介

### Association

* has_many :items
* has_many :comments


## items table

| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| genre_id                            | string     | null: false                    |ジャンル（ラケット、シューズ、ガッド、ゲームシャツ）
| maker_id                            | string     | null: false                    |メーカー
| price                               | string     | null: false                    |価格
| merit                               | text     | null: false                    |あなたのおすすめポイント
| user                                | references | null: false, foreign_key: true |外部キー

### Association

 * belongs_to :user
 * has_many :comments


 ## comments table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| content     | text       | null: false                    |コメント
| item        | references | null: false, foreign_key: true |外部キー
| user        | references | null: false, foreign_key: true |外部キー

### Association

- belongs_to :item
- belongs_to :user



