# Ryu を用いた HTTP パケットのドメインによるルーティング

## 作りたいもの

特定のIPアドレスに向けて送信されたHTTPパケットに対し, HTTPヘッダのドメインを読んで対応するIPアドレスをパケットの宛先に上書きする動作を行う Open vSwitch を作る

## 参考文献

- [環境構築 — Ryubook 1.0 ドキュメント](https://osrg.github.io/ryu-book/ja/html/installation_guide.html#ch-inst-guide)

## 作業ログ

まずdockerで動かしてみる

```sh
# 以下, Ubuntu 20.04 Server を利用
docker run -it --privileged -e DISPLAY=$DISPLAY \
             -v /tmp/.X11-unix:/tmp/.X11-unix \
             -v /lib/modules:/lib/modules \
             osrg/ryu-book
```
