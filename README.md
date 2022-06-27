
# アプリケーション名
swing

# アプリケーション概要
サークルメンバー同士で、おすすめのバドミントングッズを紹介、共有することができる。

# URL
https://swing-37856.herokuapp.com/

# テスト用アカウント
ベーシック認証ID：admin  
ベーシック認証パスワード：2222  
メールアドレス:test@test  
パスワード：test0927  

# 利用方法
トップページからユーザー登録を行う。  
ヘッダーの新規投稿ボタンからおすすめバドミントン商品を投稿する。  
商品画像をクリックすると商品の詳細ページを見ることができる。またコメントを残すことができる。  

# 実装した機能についての画像やGIFおよびその説明

ログイン機能
[![Image from Gyazo](https://i.gyazo.com/5c9a4259b8004a5873189cbfacf9b657.gif)](https://gyazo.com/5c9a4259b8004a5873189cbfacf9b657)


投稿機能






# アプリケーションを作成した背景
どのような商品を買えば良いか分からない初心者メンバーに向けて、
他のサークルメンバーの使用している商品を紹介することで、商品選びの参考にしてもらいたかった。


# 開発環境
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

# 工夫したポイント
ログイン中にニックネームがトップページに出るようにしたこと。  
バドミントン歴、プロフィール欄を入力する項目を作成し、会ったことのないメンバーでもコミュニケーションを取りやすくした。  

# これから追加実装したいこと
・Active_Hashを導入する。  
・見た目が質素なのでデザインしていく。  
・マイページが中途半端なので完璧に実装する。  















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



