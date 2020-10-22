class MakersBnB < Sinatra::Base

get '/signin' do
  erb (:'sessions/signin')
end

post '/sessions' do
  user = User.authenticate(email: params[:email], password: params[:password])
  if user
    session[:user_id] = user.id
    redirect '/add'
  else
    redirect '/signin'
  end
end

delete '/sessions' do
  session.delete(:user_id)
  redirect '/sign_in'
end

end
