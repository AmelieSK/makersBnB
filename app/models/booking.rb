require 'date'

class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :space
  
  def parsed_date
    date.strftime('%d/%m/%Y')
  end
  
end
