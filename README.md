 # ScheduleBlog



 **概要**  
このアプリケーションを用いることでカレンダーに投稿したタイトルが表示され何日に何をするのか何をしたのかを見ることができる。予定を記入するほかブログとしても利用できるように投稿内容にコメントや画像投稿が出来るようにしている。

- URL:https://scheblo.herokuapp.com/

 **テスト用アカウント**
- Basic認証
  name ：sh05
  password ：5555

- アドレス  ：simple@com
- パスワード  ：123abc

 **利用方法**
  
- ログイン状態(登録していない場合は新規登録)にする。
  
- カレンダーへ投稿をクリックして投稿フォームにタイトルと日時を入力し送信するとカレンダーの指定した日付に詳細ページに遷移するためのタイトルが表示される。(コメントと画像は空でも送信できる)
  
- 詳細ページでは投稿の編集と削除ができる。

 **課題解決**
- 私自身の経験から出張やヘルプ等、勤務先が変わることが多い人に向けて何日にどこに行くかなどカレンダー表示にして見やすいものを作る。さらにコメント機能や画像投稿機能をつけることで以前は何をしたのかということを思い出しやすいように機能を実装する。

 **要件定義と機能説明・挙動**
  
 **カレンダー機能**  
 - simple_calenderというgemを利用してviewファイルにカレンダーを表示させる。
![image](https://user-images.githubusercontent.com/72375725/100194425-0648ae80-2f39-11eb-8b91-8d2796aa7de3.png)

 **投稿機能**
 - 投稿内容はタイトル、日時、コメント、画像の４つ。
  
   カレンダーと紐づけるために少なくともタイトルと日時が入力されていれば投稿できるようにする。
  
   カレンダー内に投稿されたタイトルを表示して詳細ページに遷移し詳細を見ることができる。詳細ページにて編集・削除ができるようにする。
 ![image](https://user-images.githubusercontent.com/72375725/100199610-c259a780-2f40-11eb-908a-761573dad032.png)
 ![image](https://user-images.githubusercontent.com/72375725/100194249-aeaa4300-2f38-11eb-8949-28cf7f832ae1.png)

 **ユーザー登録機能**
- deviseというgemを利用してユーザーのログイン機能を実装し他のユーザから投稿が見られないようにする。
![image](https://user-images.githubusercontent.com/72375725/100200016-62afcc00-2f41-11eb-8004-adaadb3d4292.png)
右上にようこそ〜〜さんという表記がされて他のユーザーの投稿が見えなくなる
![image](https://user-images.githubusercontent.com/72375725/100200105-7f4c0400-2f41-11eb-925d-24f1daffe02c.png)


 **画像投稿機能**
- 画像の添付ができるようにする。画像は添付してもしなくても投稿できるようにしておく。プレビュー機能は画像を添付した際に何の画像を添付したのかをわかりやすするため実装する。
 ![image](https://user-images.githubusercontent.com/72375725/100205046-f6849680-2f47-11eb-818a-da2930bd3f64.png)
- 詳細ページにて画像が表示される。
 ![image](https://user-images.githubusercontent.com/72375725/100195423-aa7f2500-2f3a-11eb-99d6-7156675c6089.png)

 **追加予定の機能**

  - レスポンシブ機能

    ブラウザの縮小や携帯・タブレットなどの画角に合わせて表示できるようにCSSの表記を設定する。
    
  - テストコード

    単体テストコードの記述

 **テーブル設計とER図**
  
  

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


 ## ローカルでの動作方法
  利用するディレクトリ下で

  1.git https://github.com/ma2sh0505/scheblo.git  
  
  2.cd scheblo
  
  3.bundle instal

  4.cd db:create  
  
  5.cd db:migrate

  以上の順番で実行する。
  
  - 開発環境
  

  使用言語はruby.JavaScript.SQL.HTML.CSS
  
  rubyのver. 2.6.5
  
  フレームワークはRuby on Rails
  
  パッケージはdeviseとsimple_calendarのgemを利用


