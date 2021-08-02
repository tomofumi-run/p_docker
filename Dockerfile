FROM ruby:2.7
# rubyの2.7系のイメージを使用

RUN mkdir /var/www
# コマンドの実行(mkdirを実行)

COPY main.rb /var/www
# 上記の場所にmain.rbを置く

CMD ["ruby", "/var/www/main.rb"]
# main.rbを実行するコマンド