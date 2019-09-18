docker-xxd
==========
基本staticバイナリとしてビルドしますぅ\
volumeマウントしてバイナリだけ取り出すでもいいよ

build方法
---------

### 完全にコマンドだけで (生成物一切なし)
```sh
curl https://raw.githubusercontent.com/k1nPr45b0/docker-xxd/master/Dockerfile | docker build -t xxd -
```

### 一般的なやつ (docker build -t xxd .)
```sh
git clone https://github.com/k1nPr45b0/docker-xxd.git
cd docker-xxd
docker build -t xxd .
```
