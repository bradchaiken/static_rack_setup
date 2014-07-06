use Rack::Static,
  :urls => ["/images", "/js", "/css", "/font_awesome/css", "/font_awesome/fonts", "/font_awesome/less", "/font_awesome/scss", "/fonts", "/less"],
  :root => "public"

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('public/index.html', File::RDONLY)
  ]
}