require 'bcrypt'
require 'active_record'

class User < ActiveRecord::Base
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

end
