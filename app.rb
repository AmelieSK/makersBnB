require 'sinatra/base'

class Makersbnb < Sinatra::Base

get '/' do
  erb :index
end

end