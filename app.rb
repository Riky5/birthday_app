require 'sinatra/base'
require 'sinatra/reloader'
require './lib/birthday'

class BirthdayApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @birthday = Birthday.new
  end

  get '/' do
    erb :index
  end

  post '/details' do
    $first_name = params[:first_name]
    $day = params[:day].to_i
    $month = params[:month]
    redirect '/happy_bday'
  end

  get '/happy_bday' do
    @day = $day
    @month = @birthday.month_to_int($month)
    @days_left = @birthday.days_left(@day, @month)
    erb :happy_bday
  end

  run! if app_file == $0
end