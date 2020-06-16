# サイト名
**tsk-mgmt**  
  
# URL
http://18.178.191.12/  
  
# 制作期間  
10日  
  
# 作成経緯
日報を確認してもらえないことがあり、情報伝達がうまくできなかった経験がありました。  
このミスを無くすために、日頃から確認する、予定表と日報の機能を組み合わせることで解決できると思い、
このサイトを作成いたしました。  
  
# このサイトで可能なこと
・日々の予定の管理  
・日報の送信及び、日報に対するメッセージのやり取り  
  
# フレームワーク及び、使用言語
フレームワーク  
Ruby on Rails(Ver5.2.4.1)  
  
使用言語  
HAML(ver5.1.2)  
SCSS(ver3.7.4)  
jquery(ver1.12.4)  
Ruby(ver2.5.1)  

# 使用方法
**・ログインページ**  
URL先を開くとログインページが表示されます。  
機能の参照だけ行いたい方はテストアカウントを用意しておりますので、以下情報でログインをお願いいたします。  
  
テストアカウント①  
ニックネーム：テスト太郎  
パスワード：aaaaaaaa  
  
テストアカウント②  
ニックネーム：テスト花子  
パスワード：aaaaaaaa  
![トップページ](app/assets/images/explanation/機能説明_トップページ.jpg "機能説明_トップページ")  
  
**・新規登録ページ**  
新規登録ボタンを押されますと、以下ページが表示されますので、入力をお願い致します。  
既に登録されているユーザー名を入力された場合、登録が不可能ですので、ご注意ください。  
![新規登録](app/assets/images/explanation/機能説明_新規登録.jpg "機能説明_新規登録")  
  
**・メインページ**  
ログインもしくは、新規登録が完了しますと、以下ページが表示されます。  
このページでは、カレンダーに予定追加を行ったものを、月、週、日、タスクリストごとに参照することができます。  
![ログイン後ページ](app/assets/images/explanation/機能説明_ログイン後ページ_アラーム.jpg "機能説明_ログイン後ページ_アラーム")  
  
**・予定詳細ページ**  
予定追加したものをクリックしていただくと以下のように詳細な情報を閲覧していただくことが可能です。  
ここでは、予定の変更、削除を行うことができます。  
![予定詳細](app/assets/images/explanation/機能説明_予定詳細.jpg "機能説明_予定詳細")  
  
**・予定追加ページ**  
右上の予定追加ボタンをクリックしていただくと、カレンダーへ予定追加が行えます。
![予定追加](app/assets/images/explanation/機能説明_予定追加.jpg "機能説明_予定追加")  
  
**・日報送信ページ**  
右上の日報送信ボタンをクリックしていただくと、日報送信が行えます。  
宛先にはユーザー名を入力していただくことで検索が可能です。  
宛先を入れて日報を送りたい方は、「テスト太郎」もしくは「テスト花子」を入力していただくことで検索が可能でございます。  
また、宛先を入れずに自分自身のみに送ることも可能でございます。  
  
本文につきましては、文字のサイズ、文字の色、背景色、等の修飾が可能でございます。  
![日報送信](app/assets/images/explanation/機能説明_日報送信.jpg "機能説明_日報送信")  
  
**・日報管理ページ**  
右上の日報管理ボタンをクリックしていただくと、日報の管理画面が開きます。  
この画面では自分が送った日報(送信BOX)と、送られてきた日報(受信BOX)の確認ができます。  
未読のメッセージについてはこちらで全てアラームで表示されます。
![日報管理](app/assets/images/explanation/機能説明_日報管理.jpg "機能説明_日報管理")  
詳細を確認したい日報をクリックしていただくと、その日報の詳細画面が開きます。  
日報のメッセージの欄で、送信者及び、受信者のメッセージのやり取りが可能でございます。  
![日報詳細](app/assets/images/explanation/機能説明_日報詳細.jpg "機能説明_日報詳細")  
  
# License
Copyright (c) 2020 Yuuto Takaki  
This software is released under the MIT License, see LICENSE.

