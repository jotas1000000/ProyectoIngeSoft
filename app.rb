require 'sinatra'
require './lib/vacasYtoros.rb'
require './lib/GlobalVariables.rb'

@@globalVariables = GlobalVariables.new(4,"1234",VacasYToros.new(), "RAVL", "number")


get '/' do
    erb :instrucciones
end

get '/Homepage' do
    @@globalVariables.setConditionsGame()
    erb :Homepage
end

get '/Play' do
    erb :twoGamers
end

get '/Config' do
    erb :config 
end
 
post '/setCounterTries' do
    @counterTries = params['counterTries'].to_i
    @numberTry = @@globalVariables.setCounterTries(@counterTries)
    erb :goMenu
end

post '/RegisterTwoGamers' do
    @playerOne = params['playerOne']
    @playerTwo = params['playerTwo']
    @verifyResponse = @@globalVariables.verifyNamesGamers(@playerOne, @playerTwo)
    if( @verifyResponse == "Ok")
        erb :selectGameAndDificult
    else
        erb :twoGamers
    end
end

post '/EnterSecrets' do
    @typeGame = params['typeGame']
    @dificult = params['dificult']
    @@globalVariables.enterConditionsGame( @typeGame, @dificult)
    @length =  @@globalVariables.getLengthDificult()
    @instructionPlayer = @@globalVariables.getInstructionsPlayer(2)

    if (@typeGame == "number")
        erb :play
    elsif (@typeGame == "colors")
        erb :playWithColors
    end
end

get '/PlayAgain' do
    @instructionPlayer = @@globalVariables.getInstructionsPlayer(2)
    @length =  @@globalVariables.getLengthDificult()
    @typeGame = @@globalVariables.getTypeGame()
    @@globalVariables.setConditionsPlayAgain()
    if (@typeGame == "number")
        erb :play
    elsif (@typeGame == "colors")
        erb :playWithColors
    end
end
post '/secretRegister' do
    @secretValue = params['secretValue']
    @typeGame = @@globalVariables.getTypeGame()
    if ( @@globalVariables.validateSecret( @secretValue ) )         
        @@globalVariables.setSecretPlayer( 2, @secretValue )
        @@globalVariables.setTurnPlayer( 1 )
        @player = @@globalVariables.getPlayer(1)
        erb :playerStart
    else
        @player = @@globalVariables.getTurnPlayer()
        @instructionPlayer = @@globalVariables.getInstructionsPlayer( 2 )
        @length =  @@globalVariables.getLengthDificult()
        if (@typeGame == "number")
            erb :play
        elsif (@typeGame == "colors")
            erb :playWithColors
        end
    end
end

get '/PageTrie' do
    @player = @@globalVariables.getTurnPlayer()
    @currentAttempt = @@globalVariables.countTriesPlayer(@player)
    @totalAttempts = @@globalVariables.getCounterTries()
    @typeGame = @@globalVariables.getTypeGame()
    @length =  @@globalVariables.getLengthDificult()

    if( @typeGame == "number")
        erb :interfazJuego
    elsif( @typeGame == "colors" )
        erb :interfazJuegoForColors
    end
end

post '/Attempt' do 
    @attempt = params['attempt']   
    @player = @@globalVariables.getTurnPlayer()
    @secret = @@globalVariables.getSecretPlayerOponent(@player)
    @playerOponent = @@globalVariables.getOponent(@player)
    @length = @secret.size.to_s
    @typeGame = @@globalVariables.getTypeGame()
    @playerName =@@globalVariables.getPlayer(@player)
    @result = ""
    @attempts = []
    @results = []
    @currentAttempt = 1
    @totalAttempts = 1
    if ( @@globalVariables.countTriesPlayer(@player) <= @@globalVariables.getCounterTries() )

        @result = @@globalVariables.runGame(@attempt)
        @results = @@globalVariables.getResults()
        @attempts = @@globalVariables.getAttempts()
        @totalAttempts = @@globalVariables.getCounterTries()
        @currentAttempt = @@globalVariables.countTriesPlayer(@player)

        if (@result == "El numero no puede tener letras" || @result == "Los numeros no son del mismo tamano" ||
            @result == "Los colores no corresponden con el tamano del secreto" || @result =="No pueden existir numeros en el valor" ||
            @result == "Los elementos no deben repetirse")
            @error = "No ingreso de manera correcta el ultimo intento!"
            if( @typeGame == "number")
                erb :interfazJuego
            elsif( @typeGame == "colors" )
                erb :interfazJuegoForColors
            end

        elsif(@result == "4 toros y 0 vacas" || @result == "6 toros y 0 vacas" || @result == "8 toros y 0 vacas")
            @@globalVariables.attemptDone(@player)
            @@globalVariables.pushAttempt(@attempt)
            @@globalVariables.pushResult(@result)
            @results = @@globalVariables.getResults()
            @attempts = @@globalVariables.getAttempts()
            @message = "Ganaste!"
            erb :endGame
        else
            @@globalVariables.attemptDone(@player)
            @currentAttempt = @@globalVariables.countTriesPlayer(@player)
            @@globalVariables.pushAttempt(@attempt)
            @@globalVariables.pushResult(@result)
            @results = @@globalVariables.getResults()
            @attempts = @@globalVariables.getAttempts()
            if ( @@globalVariables.countTriesPlayer(@player) <= @@globalVariables.getCounterTries() )
                if( @typeGame == "number")
                    erb :interfazJuego
                elsif( @typeGame == "colors" )
                    erb :interfazJuegoForColors
                end            
            else
                @message = "Perdiste!"
                erb :endGame
            end
        end      
    end
end