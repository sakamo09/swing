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
| genre_id                            | string     | null: false                    |ジャンル
| merit                               | string     | null: false                    |おすすめポイント
| user                                | references | null: false, foreign_key: true |

### Association

 * belongs_to :user
 * has_many :comments


 ## comments table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| content     | text       | null: false                    |コメント
| item        | references | null: false, foreign_key: true |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :item
- belongs_to :user



