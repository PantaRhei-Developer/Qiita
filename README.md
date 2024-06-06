# Qiita

本レポジトリはQiitaの記事のアップロードや記事管理をVSCodeでできるようにしたものです！

# 初期手順

<B>前提</B>
- githubのアカウントを持っている
- Qiitaアカウントを持っている
- Panta RheiのOrganizationに入っている
  (入っていない場合はかずさんに相談してください！)

## 0. Qiitaでトークンを発行します
Qiitaにログインして、自分のアイコンをクリック>設定>アプリケーションに進んでください。
![Qiita_Setting_Application](./images/Qiita_Setting_Application.png)
ここで個人用アクセストークンを新規発行してください。

この時の名前はなんでも良いですが、[Qiita公式レポジトリ](https://github.com/increments/qiita-cli?tab=readme-ov-file#qiita-%E3%81%AE%E3%83%88%E3%83%BC%E3%82%AF%E3%83%B3%E3%82%92%E7%99%BA%E8%A1%8C%E3%81%99%E3%82%8B)では、```qiita-cli```という名前をつけています。

ここで得られたトークンは今後使います&<B>忘れたら絶対に元に戻らない</B>ので個人で各〻保管しておいてください。

## 1. Github ActionsにQiita Tokenを保存する

## 2. githubからレポジトリを取得し、ブランチをdevにします

クローンして
```bash
git clone git@github.com:PantaRhei-Developer/Qiita.git
```

レポジトリに入り
```bash
cd Qiita
```

ブランチを```dev```に変更します。
```bash
git checkout -b dev
```

## 3. nodeのDocker環境を立ち上げて入ります

Docker環境をビルドしてランします。
```bash
docker compose up
```

その後、そのDocker環境の中に入ります。

[Dev Container](https://zenn.dev/bells17/articles/devcontainer-2024)という素晴らしいVS Codeのエクステンションがあるので、それを入れてその環境に入ることをお勧めします。

エクステンションを入れた後、以下の鯨マークをクリックして```qiita```タブを開いてください。
```qiita_qiita-local```の部分を右クリックすると「Visual Studio Codeをアタッチする」と出てくるのでそれをクリックしてください。

![DevContainerCapture](./images/DevContainerCapture.png)

これでDockerの中に入れました。

