require 'bcrypt'
require 'active_record'

class User < ActiveRecord::Base
has_many :spaces
include BCrypt


  def self.authenticate(email:, password:)
    user = find_by(email: email)
    return nil if user.nil?
    return nil if user.password != password
    user
  end

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def create
    @user = User.new(params[:user])
    @user.password = params[:password]
    @user.save!
  end

end
