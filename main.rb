require 'webrick'

server = WEBrick::HTTPServer.new(
  DocumentRoot: './', # このディレクトリ内を参照
  BindAddress: '0.0.0.0',
  Port: 8000
)

server.mount_proc('/') do |req, res| # リクエストに対するレスポンス
  res.body = 'hello' # helloと表示させる
end

server.start
# serverをスタート