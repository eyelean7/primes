require('sinatra')
require('sinatra/reloader')
require('./lib/prime')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  @your_num = params.fetch('prime')
  @result = params.fetch('prime').to_i.prime()
  erb(:result)
end
