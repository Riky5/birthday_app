require 'sinatra/base'
require 'sinatra/reloader'

class BirthdayApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/happy_bday' do
    @first_name = params[:first_name]
    # @day = params[:day]
    # @month = params[:month]
    erb :happy_bday
  end

  run! if app_file == $0
end