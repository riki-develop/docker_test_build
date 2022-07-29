# main.rbを実行する設定

FROM ruby:2.7

RUN mkdir /var/www
COPY main.rb /var/www

CMD ["ruby", "/var/www/main.rb"]

# イメージ作成
# docker image build -t sample/webrick:latest .

# 作成したimage確認
# docker image ls -a

# コンテナの作成・実行
# docker container run -p 8000:8000 --name webrick sample/webrick:latest

# コンテナの停止
# docker container stop 【コンテナ名】
# もしくは... control + C

# コンテナの起動状況確認
# docker container ls -a

# コンテナの削除
# docker container rm 【コンテナ名】

# logを見る
# docker container logs webrick

# docker起動中に別のコマンドを打ちたい時
# 例：docker container exec webrick ruby -v

# 後片付け imageを削除
# docker system prune -a
