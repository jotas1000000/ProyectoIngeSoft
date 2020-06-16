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
end