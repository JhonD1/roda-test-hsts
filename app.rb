class App < Roda
  plugin :render
  plugin :default_headers, 
    'X-Frame-Options'=>'deny',
    'Strict-Transport-Security'=>'max-age=63072000; includeSubDomains; preload'

  route do |r|
    r.root do
      view 'index'
    end

    r.on 'www.roda-test-hsts.onrender.com' do
      r.redirect '/'
    end
  end
end