## 概要
javaの開発環境をDockerで作りました。

## 使い方

```
$ docker image build -t myjdk:v1 .
$ docker container run -it -u aki --rm -v "$PWD"/src:/home/aki/ myjdk:v1 bash -c "javac MyApp.java && java MyApp && rm MyApp.class"
```

## License
MIT