require 'sinatra/base'

class Application < Sinatra::Application
  enable :sessions

  def initialize(app=nil)
    super(app)

    # initialize any other instance variables for you
    # application below this comment. One example would be repositories
    # to store things in a database.

  end

  get '/' do
    email = session[:email]
    erb :index, :locals => {:email => email, :welcome => "Welcome"}
  end

  get '/register' do
    erb :register
  end

  post '/register' do
    session[:email] = params[:email]
    p params
    redirect '/'
  end

end