require 'bundler'
Bundler.require(:default, :test)
require 'test/unit'

# set test environment
Sinatra::Base.set :environment, :test
Sinatra::Base.set :run, false
Sinatra::Base.set :raise_errors, true
Sinatra::Base.set :logging, false

require_relative '../wikgit'
