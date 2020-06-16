class GlobalVariables
    
    def initialize(countTries,secretNumber, vacasToros, secretColors, typeGame)
        @countTries = countTries
        @secretNumber = secretNumber
        @vacasytoros = vacasToros
   
        @secretColors = secretColors
        @typeGame = typeGame
        @playerOne = "Default1"
        @playerTwo = "Default2"
        @dificult = "easy"
        @secretPlayerOne = "1234"
        @secretPlayerTwo = "1234"
        @turnPlayer = 1
        @countTriesOne = 1
        @countTriesTwo = 1
        @attempts = []
        @results = []
       end


    def getCounterTries()
        return @countTries
    end

    def setCounterTries(numberCounterTries)
        @countTries = numberCounterTries
        return @countTries
    end

    def discountCounterTries()
        @countTries -= 1
        return @countTries
    end

    def getSecretNumber() 
        return @secretNumber
    end

    def setSecretNumber(numberSecretNumber)
        @secretNumber = numberSecretNumber
        return @secretNumber
    end

    def runGame(attempt)
        if (validateSecret(attempt))
            if(@turnPlayer == 1)
                return @vacasytoros.run(attempt,@secretPlayerTwo,@typeGame)         
            elsif (@turnPlayer == 2)
                return @vacasytoros.run(attempt,@secretPlayerOne,@typeGame)         
            end
        else
            return "Los elementos no deben repetirse"
        end
    end


   
    def getAttempts()
        return @attempts
    end

    def pushAttempt( element )
        @attempts.push(element)
    end

    def getResults()
        return @results
    end

    def pushResult( element )
        @results.push(element)
    end

    def attemptDone( numberPlayer)
        if(numberPlayer == 1)
            @countTriesOne += 1
        elsif (numberPlayer == 2)
            @countTriesTwo += 1
        end
    end

    def countTriesPlayer(numberPlayer)
        if(numberPlayer == 1)
            return @countTriesOne
        elsif (numberPlayer == 2)
            return @countTriesTwo
        end
    end

    def getPlayer(numberPlayer)
        if(numberPlayer == 1)
            return @playerOne
        elsif (numberPlayer == 2)
            return @playerTwo
        end
    end

    def getDificult()
        return @dificult
    end

    def getTypeGame()
        return @typeGame
    end

    
    def getTurnPlayer()
        return @turnPlayer
    end

    def setTurnPlayer(number)
        @turnPlayer = number
        return @turnPlayer
    end

    def getSecretPlayer(numberPlayer) 
        if (numberPlayer == 1)
            return @secretPlayerOne
        elsif (numberPlayer == 2)
            return @secretPlayerTwo
        end
    end

    def getSecretPlayerOponent(numberPlayer)
        if (numberPlayer == 1)
            return @secretPlayerTwo
        elsif (numberPlayer == 2)
            return @secretPlayerOne
        end
    end

    def setSecretPlayer(numberPlayer, secret)
        if (numberPlayer == 1)
            @secretPlayerOne = secret
        elsif (numberPlayer == 2)
            @secretPlayerTwo = secret
        end
        return getSecretPlayer(numberPlayer)
    end

    def getInstructionsPlayer(numberPlayer) 
        message = "Jugador "
        if (numberPlayer == 1)
             message += @playerOne
        elsif (numberPlayer == 2)
            message += @playerTwo
        end

        if (@typeGame == "number" )
            message += " escriba el numero secreto para el jugador "
        elsif (@typeGame == "colors" )
           message += " escriba las iniciales de los colores secretos para el jugador "
        end

        if (numberPlayer == 1)
            message += @playerTwo
         elsif (numberPlayer == 2)
           message += @playerOne
        end

        return message
    end



    def verifyNamesGamers(playerOne, playerTwo)
        if( playerTwo[0] == " " || playerTwo[0] == " ")
            return "Error: Los nombres de los jugadores no pueden comenzar con un espacio"
        else
            @playerOne = playerOne
            @playerTwo = playerTwo
            return "Ok"
        end
    end

    def enterConditionsGame(typeGame,dificult)
        @typeGame = typeGame
        @dificult = dificult
    end

    def getLengthDificult()
        if (@dificult == "easy")
            return 4
        elsif ( @dificult == "mid")
            return 6
        elsif ( @dificult == "hard") 
            return 8
        end
    end
end