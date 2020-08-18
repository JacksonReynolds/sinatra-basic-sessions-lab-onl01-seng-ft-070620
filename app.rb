require_relative 'config/environment'

class App < Sinatra::Base
    configure do
        enable :sessions
        set :session_secret, "why"
    end

    get '/' do
        erb :index
    end

    post '/checkout' do
        @item = params[:item]
        session[:item] = params[:item]
        @session = session
        erb :show
    end
end