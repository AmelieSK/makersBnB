class MakersBnB < Sinatra::Base
  
  get '/signup' do
    erb (:'signup/signup')
  end

  post '/signup' do
    user = User.new(email: params[:email])
    user.password = params[:password]
    if user.save!
      session[:user.id] = user.id
      redirect '/signin'
    else
    end
  end
end
