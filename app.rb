require 'sinatra'

get '/' do
    erb :instrucciones
end

get '/Homepage' do
    erb :Homepage
end

get '/Play' do
    erb :interfazJuego
end