# frozen_string_literal: true

require 'rspec'
require 'omniauth'
require 'omniauth-douyin'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
