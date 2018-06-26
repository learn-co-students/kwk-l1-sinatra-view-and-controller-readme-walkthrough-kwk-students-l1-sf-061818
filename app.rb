require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    puts params 
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends 
  end 
  get "/profile" do
    erb :profile
  end 
    # Write your code here!

# <h2>Emily Wilding Davison</h2>
# <h2>Harriet Tubman</h2>
# <h2>Joan of Arc</h2>
# <h2>Malala Yousafzai</h2>
# <h2>Sojourner Truth</h2>

end
