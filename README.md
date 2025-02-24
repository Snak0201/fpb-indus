# fpb-indus

## 技術情報

- Rails 8.0.1
- Ruby 3.4.2

## 環境構築

### 準備

#### 手順

1. `git clone https://github.com/Snak0201/fpb-indus.git`
1. `master.key`を受け取って`config/master.key`
1. Docker Hub のアクセストークン（Read, Write）を取得し、`.kamal/kamal.key`に配置する
1. コンテナーで再度開くを押す

#### トラブルシューティング

- /usr/bin/env: ‘sh\r’: No such file or directory など、`\r`がついているエラー
  - bin の中のファイルの改行コードを CRLF→LF にする

### 動作

1. ブラウザで`localhost:8001`にアクセスする

## デプロイ

デプロイの機構として kamal を利用しています。`kamal deploy`でデプロイできます。

### 準備

1. 秘密鍵を受け取り、ファイルを配置する
1. ssh の設定をして、`ssh {USERNAME}@{IP} -p {PORT}`で疎通を確認する
1. main ブランチであることを確認して、`kamal setup`
   - デプロイが走るので注意する

### デプロイ（動作確認）

`kamal deploy`

### リリース手順

1. GitHub のリリースでバージョン(X.Y.z)を作成する
1. `kamal deploy --version={X.Y.z}`
