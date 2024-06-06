---
title: 会社GithubでQiitaのOrganization記事を管理できるようにした話
tags:
  - 'Github Actions'
  - 'QiitaEngineerFesta2024'
  - 'Qiita'
  - 'VSCode'
private: false
updated_at: ''
id: null
organization_url_name: https://qiita.com/organizations/pantarhei
slide: false
ignorePublish: false
---
# 自己紹介
初めまして！株式会社 Panta Rhei CEOのかずさんと申します！Twitterはpantdasistaの名前で活動しているので以後お見知り置きをお願いします。

# 前段
## Qiita Engineer Festa 2024の景品が欲しい！
[Qiita Engineer Festa 2024](https://qiita.com/official-campaigns/engineer-festa/2024)というお祭りがあることを弊社メンバーから聞いたので、ぜひ乗っかろうという形です。
- 個人賞
  - 個人で38記事書いたら豪華景品！(半分の19記事でもちょっともらえるよ！)
- Organization記事で期間内のいいね数合計が多いOrganizationを表彰
  - 「10人以下」というエントリー枠があるよ！

というものです。表彰されたいし可愛いぬいぐるみも貰えたらもうアドアドのアドです。
<B>全社的に取り組みたい！！！！</B>

## 本記事を書く前の弊社の環境

- 技術記事を書く風土がそんなにない
- 技術力はしっかりにある
  - ほとんど理系情報系orDS系学部出身
  - <B>IPA資格者(応用情報とか)</B>や<B>Google Cloud Professionalの複数資格者</B>もいる
- 祭りだ祭りだワイがやという感じでもない

私の思いとしては
- 技術系企業なので
  「記事を毎日持ち回りで投稿しましょう！」
  というような運用による解決はなんだかなぁという
- 記事を書きたくなるような風土を作りたいなという

といった感じ。

## 思い立った

以前チラッとQiitaで見た「[GithubでQiitaのコードを管理する](https://qiita.com/Qiita/items/32c79014509987541130)」を導入すれば、普段の業務と同じ感じで、しかも<B>プルリクを出す喜びを感じられてモチベになるのでは！！！</B>

## 調べてみた
ただ、紹介されている内容は「個人の記事投稿のGithub管理」といった感じ。
Organizationで進めようというのはそのままやるのが難しそう！

# 本題
「<B>会社GithubでQiitaのOrganization記事を管理できるようにした話</B>」

以下が順序です。
1. (Organizationがない会社は)Qiitaの[Organization申請](https://help.qiita.com/ja/articles/qiita-org-create)をする
2. Qiita専用のレポジトリを作成する
3. レポジトリの中にnode.js環境用の```Dockerfile```を作成する