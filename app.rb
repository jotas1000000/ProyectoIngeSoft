require 'sinatra'
require './lib/vacasYtoros.rb'

def initialize()
    @to = 10
    @by = 10
end
@@from = 10
@@vacasYToros = VacasYToros.new()
@@secetNumber = '1234'


get '/' do
    erb :instrucciones
end

get '/Homepage' do
    erb :Homepage
end

get '/Play' do
    @@from = 10
    erb :play
end

get '/EnterNumber' do
    @maxlength = @@secetNumber.size.to_s
    erb :interfazJuego
end

post '/Number' do
    @number = params['number']
    @numberTry = @@from
    @result = @@vacasYToros.run(@number, @@secetNumber);
    @@from -= 1
    erb :response
end