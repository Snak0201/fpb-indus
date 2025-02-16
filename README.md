# fpb-indus

## 技術情報

- Rails 8.0.1
- Ruby 3.4.2

## 環境構築

### 手順

### VSCode の devcontainer を使う場合

1. `git clone https://github.com/Snak0201/fpb-indus.git`
1. コンテナーで再度開くを押す

### devcontainer を使わない場合

1. `git clone https://github.com/Snak0201/fpb-indus.git`
1. `docker compose build`
1. `docker compose run --rm web bundle`
1. `docker compose up -d`

### トラブルシューティング

- /usr/bin/env: ‘sh\r’: No such file or directory など、`\r`がついているエラー
  - bin の中のファイルの改行コードを CRLF→LF にする
