require 'sinatra/base'

class Chitter < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/sign-in' do
    erb :sign_in
  end

  post '/sign-in' do
    # Sign in the user if they exist
    # Redirect to the /play page
  end

  post '/sign-up' do
    session[:user_email] = params[:email]
    redirect '/play'
  end

  get '/play' do
    # TODO: fetch the user from the database
    @email = session[:user_email]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
