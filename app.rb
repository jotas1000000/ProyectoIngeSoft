require 'sinatra'
require './lib/vacasYtoros.rb'
require './lib/GlobalVariables.rb'

@@globalVariables = GlobalVariables.new(10,"12345",VacasYToros.new())


get '/' do
    erb :instrucciones
end

get '/Homepage' do
    erb :Homepage
end

get '/Play' do
    erb :play
end

get '/EnterNumber' do
    @maxlength = @@globalVariables.getSecretNumber().size.to_s
    erb :interfazJuego
end

post '/Number' do
    @number = params['number']
    @numberTry = @@globalVariables.getCounterTries()
    @result = @@globalVariables.runGame(@number)
    @@globalVariables.discountCounterTries()
    erb :response
end