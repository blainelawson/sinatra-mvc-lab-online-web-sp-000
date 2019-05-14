require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :user_input
  end

  post '/piglatinized' do
    @text = params[:string]

    erb :piglatinized
  end
end
