 # ScheduleBlog

 **概要**  
このアプリケーションを用いることでカレンダーに投稿したタイトルが表示され何日に何をするのか何をしたのかを見ることができます。予定を記入するほかブログとしても利用できるように投稿内容にコメントや画像投稿が出来るようにしてあります。

- URL:https://scheblo.herokuapp.com/

 **テスト用アカウント**
- Basic認証
  name ：sh05
  password ：5555

- アドレス  ：simple@com
- パスワード  ：123abc

 **利用方法**
- ログイン状態(登録していない場合は新規登録)にします。
- カレンダーへ投稿をクリックして投稿フォームにタイトルと日時を入力し送信するとカレンダーの指定した日付に詳細ページに遷移するためのタイトルが表示される。(コメントと画像は空でも送信できます)
- 詳細ページでは投稿の編集と削除ができます。

 **課題解決**
- 出張やヘルプ等、勤務先が変わることが多い人に向けて何日にどこに行くかなどカレンダー表示にして見やすいものを作る。さらにコメント機能や画像投稿機能をつけることで以前は何をしたのかということを思い出しやすいようにする。

 **要件定義と機能説明・挙動**
 **カレンダー機能**  
 - simple_calenderというgemを利用してviewファイルにカレンダーを表示させる。
![image](https://user-images.githubusercontent.com/72375725/100194425-0648ae80-2f39-11eb-8b91-8d2796aa7de3.png)

 **投稿機能**
 - 投稿内容はタイトル、日時、コメント、画像の４つ。カレンダーと紐づけるために少なくともタイトルと日時が入力されていれば投稿できるようにする。カレンダー内に投稿されたタイトルを表示して詳細ページに遷移し詳細を見ることができる。詳細ページにて編集・削除ができるようにする。
 ![image](https://user-images.githubusercontent.com/72375725/100194637-60e20a80-2f39-11eb-8e28-103d6ab46bbe.png)
 ![image](https://user-images.githubusercontent.com/72375725/100194249-aeaa4300-2f38-11eb-8949-28cf7f832ae1.png)

 **ユーザー登録機能**
- deviseというgemを利用してユーザーのログイン機能を実装し他のユーザから投稿が見られないようにする。
![image](https://user-images.githubusercontent.com/72375725/100194507-28dac780-2f39-11eb-8856-9e72d4c7ca47.png)


 **画像投稿機能**
  画像の添付ができるようにする。画像は添付してもしなくても投稿できるようにしておく。プレビュー機能は画像を添付した際に何の画像を添付したのかをわかりやすするため実装する。
 ![image](https://user-images.githubusercontent.com/72375725/100195423-aa7f2500-2f3a-11eb-99d6-7156675c6089.gif)




 # テーブル設計とER図

 
## テーブル設計

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


## ER図
 ![ER図](https://user-images.githubusercontent.com/72375725/100192677-ba483a80-2f35-11eb-8f53-c80bd38fb7b9.png)
