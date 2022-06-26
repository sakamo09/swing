
# アプリケーション名
swing

# アプリケーション概要
サークルメンバー同士で、おすめのバドミントングッズを紹介、共有することができる。

# URL
https://swing-37856.herokuapp.com/

# テスト用アカウント
ベーシック認証ID：admin
<br>ベーシック認証パスワード：2222  <br>
<br>メールアドレス:test@test  <br>
<br>パスワード：test0927  <br>

# 利用方法
トップページからユーザー登録を行う。
<br>ヘッダーの新規投稿ボタンからおすすめバドミントン商品を投稿する。  <br>
<br>商品画像をクリックすると商品の詳細ページを見ることができる。またコメントを残すことができる。  <br>

# アプリケーションを作成した背景
どのような商品を買えば良いか分からない初心者メンバーに向けて、
他のサークルメンバーの使用している商品を紹介することで、商品選びの
参考にしてもらいたかった。


# 開発環境
Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

# 工夫したポイント
ログイン中の時にニックネームがトップページに出るようにしたこと。
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



