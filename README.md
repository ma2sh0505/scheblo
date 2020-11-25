 # ScheduleBlog

- 概要  このアプリケーションを用いることでカレンダーに投稿したタイトルが表示され何日に何をするのか何をしたのかを見ることができます。

- URL:

 **テスト用アカウント**
- Basic認証  name sh05  password 0505
- アドレス  simple@com
- パスワード  123abc

 **利用方法**
- ログイン状態(登録していない場合は新規登録)にします。
- カレンダーへ投稿をクリックして投稿フォームにタイトルと日時を入力し送信するとカレンダーの指定した日付に詳細ページに遷移するためのタイトルが表示される。(コメントと画像は空でも送信できます)
- 詳細ページでは投稿の編集と削除ができます。

 **課題解決**
- 出張やヘルプ等、勤務先が変わることが多い人に向けて何日にどこに行くかなどカレンダー表示にして見やすいものを作る。さらにコメント機能や画像投稿機能をつけることで以前は何をしたのかということを思い出しやすいようにする。

 **要件定義と機能説明**
- カレンダー機能
- 投稿機能
- ユーザー登録機能
- 画像投稿機能
- プレビュー機能



 **テーブル設計とER図**



# テーブル設計

 テーブル

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| e_mail             | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :tweets

## tweets テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| title              | string     | null: false |
| content            | string     |             |
| start_time         | datetime   | null: false |
| user               | references |             |

### Association

- belongs_to :user

 ER図
 
 ![ER図](https://gyazo.com/df4c5a3a7ec59bc490c9b5af9387ed80.png）