# oneliner

CP932 でエンコードされたファイル example.cp932 を UTF-8 に変換して表示する。

```bash
$ perl -MEncode -pe 'Encode::from_to($_, "cp932", "utf-8")' example.cp932 
```

-i オプションを指定して、変換後のファイルを上書き保存する。バックアップが ~ がついたファイル名で保存される。

```bash
$ perl -MEncode -i~ -pe 'Encode::from_to($_, "cp932", "utf-8")' example.cp932 
```

以下のやり方は画面に表示するときに問題がないが、-iオプションを指定した場合にうまく
動かなかった。

```bash
$ perl -i~ -M'open=IN,:encoding(cp932)' -ne 'binmode STDOUT, ":encoding(UTF-8)"; print;' example.cp932
```

# Docker

```bash
$ docker build -t oneliner .
```

```bash
$ docker run --rm -it -v $PWD:/oneliner -w /oneliner oneliner
```
