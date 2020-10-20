class MakersBnB < Sinatra::Base

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    redirect '/add'
  end
  
end
