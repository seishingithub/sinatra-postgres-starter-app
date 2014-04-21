require 'sinatra/base'

class Application < Sinatra::Application

  def initialize(app=nil)
    super(app)

    # initialize any other instance variables for you
    # application below this comment. One example would be repositories
    # to store things in a database.

  end

  get '/' do
    erb :index, :locals => {:email => "joe@schmo.com", :welcome => "Welcome"}
  end

  get '/register' do
    erb :register
  end

  post '/register' do
    redirect '/'
  end

end