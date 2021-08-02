require 'webrick' # ライブラリを使用

server = WEBrick::HTTPServer.new( # 変数serverに代入
  DocumentRoot: './', # どこを参照するか このディレクトリ
  BindAddres: '0.0.0.0', # IPアドレスを受け取る
  Port: 8000
)

server.mount_proc('/') do |req, res|
  res.body = 'Hello World' # reqに返して、resを返す
end