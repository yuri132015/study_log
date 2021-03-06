# 2018.12.09　学んだこと


・モデル：DB（様々なものが記録されているところ）とやりとりしてデータを操作する場所


・DB：テーブル（表）、レコード（横のデータ）、カラム（縦のデータ）
  　DBのデータを扱うためにはSQLという言語を使う必要があるが、Railsのモデルを使えばRubyのプログラムで直感的にデータを扱うことができる


・マイグレーションファイル：DBのカラム名とデータ形式だけを書いたもの
  　実際のデータはDBにある


・モデル生成のためのコマンド（マイグレーションファイルとモデルのファイルを作ってくれる）
　`rails g model User name:string, age:integer`

 　rails g model モデル名 カラム名:データ形式

  モデル名：*１文字目は大文字で単数形* ↔︎ *テーブル名は小文字から始まる複数形*

  データ形式：string：文字（255字以下）
            text：文字（255字以上）
            integer：整数
            float：実数　　　　　などがある
  idは自動生成してくれるため二重に入れなくてよい


・DB作成（schema.rbとdevelopment.sqlite3も同時生成される）
　`rails db:migrate`
  　マイグレーションファイルに書かれたカラムの情報からDBを作ってくれる

  　・schema.rb：データベースにどんな情報が入っているかが書かれている

  　・development.sqlite3：実際のデータベースファイルで、この中にデータが保存されていく


・新しくカラムを作る

  `rails g migtation add_新しく作るカラム名_to_テーブル名 新しく作るカラム名:データ形式`


・追加するためのマイグレーションファイルをDBに反映させる

  `rails db:migrate` →schema.rbが更新される


`rails dbconsole`

  sqliteが立ち上がり、データベースの中を見たり、いじったりできる

  `.table`　現在入っているテーブルの一覧を確認
  `.exit`   モード終了


・Rubyを実行できるモードに入る
`rails c`


## CRUD処理
・Create

  ・モデル名.create(カラム名: "データ")

・Read

  ・モデル名.all

  ・モデル名.find(id)

  ・モデル名.find_by(カラム名: "データ")    id以外で取得したい時

  ・モデル名.where(カラム名:)              複数のデータを取得したい時

・Update

  ・更新したいデータを変数に入れ、変更後  変数名.save

・Delete

  ・削除したいデータを変数に入れ  変数名.destroy


・ラベルを作る

  `label_tag "ラベル名"`


・処理が終わった後に"/sample"というURLに自動で移動させる

  `redirect_to "/sample"`


・バリデーション：データの確認をし、データがおかしかったらDBにデータを保存しないといった仕組み

  `validates :カラム名, 制約`  モデルファイルに書く

  *モデルを変更した後は必ずサーバー再起動する！*

・validメソッド

  データがバリデーションに照らし合わせたときに適切か判定する
