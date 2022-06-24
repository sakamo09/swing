
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
社会人からバドミントンを初めた人は、どんな商品を選べば分からないと思うので
色んな人のsおすすめをみられた方が楽しいと思ったため。













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
| genre_id                            | string     | null: false                    |
| maker_id                            | string     | null: false                    |
| price                               | string     | null: false                    |
| merit                               | text       | null: false                    |
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



