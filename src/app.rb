require './config/environment'
require 'sinatra'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index
  end
end
