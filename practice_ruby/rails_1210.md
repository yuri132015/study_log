# 2018.12.10 学んだこと


・トップページの設定

  `root to : 'コントローラー名#アクション名'`


・ヘルパー

   ・`image_tag("画像ファイル名", :id => "id名")`

      自動で`assets/images`の中を参照してくれる（html.erbに記述)

   ・`background: image-url("画像ファイル名")`
      （scssに記述)


・scss

   railsで高速化のために圧縮化された画像などを表示できるようにする
   そのため上記のヘルパーを使う


・デプロイ

   Webページを公開すること


・開発環境

   アプリなどを開発する場所


・本番環境

   herokuなどのように実際に動かす場所


## Herokuにデプロイする手順

　　　　↓初めてそのアプリをデプロイするときにやること↓

  ・`heroku login( --interactive)`

  ・Gemfileの編集（開発環境と本番環境で使うパッケージが違うため）

  ・`git init`

  ・`heroku create アプリ名`

       ↓再デプロイの際に毎回やること↓

  ・`git add .`

  ・`git commit -m "commit message"`

  ・`git push heroku master`

  ・`heroku run rails db:migrate`

  ・`heroku open`
