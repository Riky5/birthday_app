require 'sinatra/base'
require 'sinatra/reloader'
require './lib/birthday'

class BirthdayApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  before do
    @birthday = Birthday.instance
  end

  get '/' do
    erb :index
  end

  post '/details' do
    session[:first_name] = params[:first_name]
    session[:day] = params[:day].to_i
    session[:month] = params[:month]
    redirect '/bday_message'
  end

  get '/bday_message' do
    @first_name = session[:first_name]
    @month = @birthday.month_to_int(session[:month])
    @days_left = @birthday.days_left(session[:day], @month)
    erb :happy_bday
  end

  run! if app_file == $0
end