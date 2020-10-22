RSpec.configure do |config|
  config.before(:all) do
    ActiveRecord::Base.logger.level = 1
  end
end
