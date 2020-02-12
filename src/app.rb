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

  helpers do

      def logged_in?
        !!current_user
      end

      def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
      end

    end
end
