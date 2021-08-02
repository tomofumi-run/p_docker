require 'sinatra' # sinatraを参照

configure do
  set :bind, '0.0.0.0' # どんな通信でも受け取るようにIPアドレスを設定
end

get '/' do
  'ここはトップページなり。'
end