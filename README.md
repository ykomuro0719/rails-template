# 開発用　Railsテンプレート　for Docker
このレポジトリはローカルマシン用の開発環境構築を目的としています
アプリケーションルートをDockerにマウントすることにより
他に依存することなく編集が可能です
* Ruby version
  2.5.1
* System dependencies
　Docker
* Configuration
```shell
cd app/make_env/develop-docker
docker-compose up --build
=> http://localhost:3000
```

* ...
