## 概要
javaの開発環境をDockerで作りました。srcディレクトリの中のMyApp.javaをコンパイルして実行できます。

## 使い方

リポジトリをクローン
```
$ git clone https://github.com/akinoriakatsuka/docker-java-environment.git
```

イメージをビルド（初回は時間がかかります）
```
$ docker image build -t myjdk:v1 .
```

イメージからコンテナを起動し、Javaのコンパイルと実行を行う
```
$ docker container run -it -u aki --rm -v "$PWD"/src:/home/aki/ myjdk:v1 bash -c "javac MyApp.java && java MyApp ; rm MyApp.class"
```

`src/MyApp.java`を変更して、開発する。

## License
MIT
