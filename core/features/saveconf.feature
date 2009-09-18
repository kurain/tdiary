@wip
フィーチャ:設定画面の利用
  日記の管理者として
  日記の設定を行いたいので
  設定画面にある項目を更新したい

  シナリオ: インストール直後の初期画面
    前提 最低限のtdiary.conf
    かつ クエリパラメータは conf=default
    もし update.rb にアクセスした
	ならば ステータスコードは 200 である
    かつ HTMLの title タグの内容は 【日記のタイトル】 を含む
	かつ HTMLの h1 タグの内容は 【日記のタイトル】 を含む
    かつ HTMLに form.conf タグがある

  シナリオ: 日記のタイトルを設定
    前提 最低限のtdiary.conf
    かつ クエリパラメータは conf=default
    もし update.rb にアクセスした
	ならば ステータスコードは 200 である
    かつ HTMLの title タグの内容は 【日記のタイトル】 を含む
	かつ HTMLの h1 タグの内容は 【日記のタイトル】 を含む
    かつ HTMLに form.conf タグがある
	かつ デフォルトの基本設定項目
    かつ フォームパラメータは conf=default
    かつ フォームパラメータは author_name=ただただし
    かつ フォームパラメータは saveconf=OK
    もし update.rb にポストした
	ならば ステータスコードは 200 である
    かつ HTMLの title タグの内容は (設定完了) を含む
	かつ HTMLの h1 タグの内容は (設定) を含む
    かつ HTMLに form.conf タグがある
