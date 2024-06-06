#!/bin/bash

# ログ用の関数
log_warning() {
    echo "WARNING: $1"
}

log_error() {
    echo "ERROR: $1"
}

# .env ファイルを読み込む
if [ -f .env ]; then
    env_text=$(<.env)
else
    log_error ".env file not found"
    exit 1
fi

# test.yml ファイルを読み込む
if [ -f ./.github/workflows/publish.yml ]; then
    yml_text=$(<./.github/workflows/publish.yml)
else
    log_error "./.github/workflows/publish.yml file not found"
    exit 1
fi

# 空白とダブルクォートを削除
env_text=$(echo "$env_text" | tr -d ' "')

# 正規表現で QIITA_TOKEN を抽出
if [[ $env_text =~ QIITA_TOKEN=(.*) ]]; then
    token_text=${BASH_REMATCH[1]}
else
    log_warning "token not found"
    token_text=""
fi

# test.yml の書き換え
yml_text=${yml_text//secrets.QIITA_TOKEN /secrets.$token_text }

# test.yml に書き戻す
echo "$yml_text" > ./.github/workflows/publish.yml