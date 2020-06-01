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

    def runGame(number)
        return @vacasytoros.run(number,@secretNumber)         
    end
end