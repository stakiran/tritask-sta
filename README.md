# tritask-sta
[Tritask](https://github.com/tritask/tritask-spec) のオレオレ実装です。

![tritasksta_image](https://user-images.githubusercontent.com/23325839/28743090-32fc207c-747c-11e7-81f3-6a9764bffb43.jpg)

<!-- toc -->
- [tritask-sta](#tritask-sta)
  - [コンセプト](#コンセプト)
  - [システム要件](#システム要件)
  - [インストール](#インストール)
  - [使い方、マニュアル](#使い方マニュアル)
    - [詳しい使い方](#詳しい使い方)
  - [強調定義ファイル trita.hilight について](#強調定義ファイル-tritahilight-について)
  - [FAQ](#faq)
    - [Q: タスクの新規/コピー時にカーソル位置がずれたり余分な空白が入ったりします](#q-タスクの新規コピー時にカーソル位置がずれたり余分な空白が入ったりします)
  - [License](#license)
  - [Author](#author)

## コンセプト
- TaskChute から見積もり機能とカテゴリ機能(セクションやモード)を引いてシンプルかつ汎用的な使い心地に
- 愛用の秀丸エディタ上で操作できる
  - 秀丸エディタだけではキツイ処理は Python に頼った
- 日付操作は柔軟に行いたい(n日後に設定、とか簡単にしたい)

## システム要件
- Windows7+
- Python 2.7
- 秀丸エディタ

## インストール
- 入手
  - `git clone https://github.com/tritask/tritask-sta` などで一式をダウンロードする
- 秀丸エディタの設定
  - [tritask.mac](tritask.mac) をマクロ登録する
- データファイルの準備
  - .trita ファイルを新規する（空ファイルなり [サンプル](sample.trita) 使うなり）
- 秀丸エディタの設定(無くても良いがあると便利)
  - tritask.mac を「キー割り当て」や「ツールバー」から素早く呼び出せるようにする
  - trita ファイル用の強調表示設定を適用する
    - その他 > ファイルタイプ別の設定 > 設定の一覧
    - 適当な設定をコピーして trita 用設定をつくる
    - 秀丸エディタで trita ファイルを開き、trita 用設定を選んだ後、[trita.hilight](trita.hilight) を強調表示設定として読み込む

## 使い方、マニュアル
使い方:

tritask.mac マクロを実行するとメニューが表示されるので、実行したい操作を選択します。

### 詳しい使い方
[スタートアップガイド](https://github.com/tritask/tritask-spec/blob/master/startup_trita.md) を参照ください。

## 強調定義ファイル trita.hilight について
秀丸エディタ上で trita ファイルを見易く＆扱いやすくするために、専用の強調定義ファイルを用意しています。

出来ること:

- 各種文法のハイライト表示
  - 属性(繰り返しの `rep:1` や日付スキップの `skipweekend:1` など)
  - 未完了タスク
  - 開始中タスク
  - 土曜日を青色で、日曜日を赤色で表示
- 見出しのサポート
  - 強調表示
  - 秀丸エディタの「次(前)の見出しに移動」も使えます

## FAQ

### Q: タスクの新規/コピー時にカーソル位置がずれたり余分な空白が入ったりします
秀丸エディタの自動インデントをオフにしてください。

- ファイルタイプ別の設定 > 体裁 > インデント > 自動インデント のチェックを外す

## License
[MIT License](LICENSE)

## Author
[stakiran](https://github.com/stakiran)
