ENV['RAILS_ENV'] ||= 'test'
require 'spec_helper'
require File.expand_path('../config/environment', __dir__)

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.include ActionDispatch::TestProcess
  config.include FactoryBot::Syntax::Methods
  config.order = 'random'
end

ActiveRecord::Migration.maintain_test_schema!
