class GlobalVariables
    
    def initialize(countTries,secretNumber, vacasToros)
     @countTries = countTries
     @secretNumber = secretNumber
     @vacasytoros = vacasToros
    end


    def getCounterTries()
        return @countTries
    end

    def setCounterTries(numberCounterTries)
        @countTries = numberCounterTries
        return @countTries
    end

    def getSecretNumber() 
        return @secretNumber
    end

    def setSecretNumber(numberSecretNumber)
        @secretNumber = numberSecretNumber
        return @secretNumber
    end

    def runGame(number)
        res = @vacasytoros.run(number,@secretNumber)
        return res
    end
end