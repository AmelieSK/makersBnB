require 'sinatra/base'
require 'sinatra/activerecord'

class MakersBnB < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions

set :root, File.dirname(File.expand_path('..', __FILE__))
def current_user
  User.find_by(id: session[:user_id])
end

end
