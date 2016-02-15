require 'sinatra/base'

class Chitter < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index
  end

  post '/sign-up' do
    session[:user_email] = params[:email]
    redirect '/play'
  end

  get '/play' do
    @email = session[:user_email]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
