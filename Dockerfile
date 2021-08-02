FROM ruby:2.7
# イメージにあるruby2.7系を参照

WORKDIR /var/www
# 作業する場所

COPY ./src /var/www
# srcのデータを作業ファイルにコピーする

RUN bundle config --local set path 'vendor/bundle'
RUN bundle install

CMD ["bundle", "exec", "ruby", "app.rb"]
# dockerが起動した時に使えるようにする
# rootユーザー

# container内に入って、インストールやアプリの操作を行う