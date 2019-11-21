require 'coolview/assets/style.rb'
require 'coolview/javascript/javascript.rb'
require 'coolview/views/views.rb'

module Coolview
  class Application
    def call(env)
      request = Rack::Request.new(env)
      handle(env, request)
    end
  end
end