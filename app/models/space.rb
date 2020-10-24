require 'active_record'

class Space < ActiveRecord::Base
  belongs_to :user

end
