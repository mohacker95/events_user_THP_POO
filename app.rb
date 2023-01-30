require 'bundler'

require_relative 'lib/user'
require_relative 'lib/event'

julie = User.new("julie@gmail.com", 28)
jean = User.new("jean@jean.com", 16)

binding.pry