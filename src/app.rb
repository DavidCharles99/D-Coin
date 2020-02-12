require './config/environment'
require 'sinatra'
configure do
  set :public_folder, 'public'
    set :views, 'src/views'
    enable :sessions
    set :session_secret, "fwitter_secret"
end
class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end
end
