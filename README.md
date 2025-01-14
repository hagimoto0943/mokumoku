# README

## 環境構築

```
$ bundle install --without=production
$ bin/rails db:setup
$ yarn install
$ bin/webpack
$ bin/rails s
```

# 事業をエンジニアリングしよう提案編の回答は以下に記述してください

## 選択した事業側の課題

直近一年間で、2 回以上もくもく会に参加してくれた人は利用者全体の 1%のみ。もくもく会で気の合う仲間を見つけられなかったのではないか？

## 提案内容

もくもく会に年代タグ(20 代限定、30 代限定 etc)を設定できるようにする。→ 様々な年代が集まることによるメリットもあるが、年代が近いもの同士の方が気の合う仲間を見つけやすいのではないかと考えられる。同じ年代の中に溶け込んだ上で様々な年代の方々と交流できるという形でステップを踏める環境を提供する。

## 実装方針

- ユーザー登録の際に、自分の年代を設定できるようにする。
- もくもく会の作成時に年代タグを指定できるようにする。
- ヘッダーにある検索フォームに年代タグを設定できるようにする。
- もくもく会一覧画面において、各イベントに付与されている年代タグをタップするとそのタグで絞り込みが行われるようにする。
- もくもく会一覧画面において、「おすすめ」の欄を作成し、自分の年代のイベントが出てくるようにする。
