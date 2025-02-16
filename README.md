# fpb-indus

## 技術情報

- Rails 8.0.1
- Ruby 3.4.2

## 環境構築

### 手順

1. `docker compose build`
1. `docker compose run --rm web bundle`
1. `docker compose up -d`

### トラブルシューティング

- /usr/bin/env: ‘sh\r’: No such file or directory など、`\r`がついているエラー
  - bin の中のファイルの改行コードを CRLF→LF にする
