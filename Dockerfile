FROM ruby:2.7
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update -qq \
  && apt-get install -y nodejs yarn
# node.js yarnをインストールする記述

ENV RAILS_ENV=production

WORKDIR /app
# 作業ディレクトリ

COPY ./src /app

RUN bundle config --local set path 'vendor/bundle' \
  && bundle install
# ruby関連のライブラリをインストール

COPY start.sh /start.sh
RUN chmod 744 /start.sh
#  ファイルの権限を付与

CMD ["sh", "/start.sh"]