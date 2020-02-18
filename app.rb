require_relative 'config/environment'

class App < Sinatra::Base

    get "/" do 
        erb :user_input
    end

    post "/piglatinize" do 
        phrase = params[:user_phrase]
        user_phrase = PigLatinizer.new
        @piglatinizer = user_phrase.piglatinize(phrase)
        erb :piglatinize
    end
end