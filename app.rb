class App < Roda
  plugin :default_headers, 
    'Strict-Transport-Security'=>'max-age=63072000; includeSubDomains; preload'

  route do |r|
    r.root do
      'index'
    end
  end
end