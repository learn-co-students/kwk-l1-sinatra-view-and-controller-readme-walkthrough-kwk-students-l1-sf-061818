require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    original_string = params["string"]
    @reverse_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
  @friends = ['Izzy', 'Michelle', 'YongQi', 'Analyce', 'Malala Yousafzai']
 
  erb :friends
  end
end
