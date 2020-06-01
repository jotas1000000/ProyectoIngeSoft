class GlobalVariables
    def initialize(countTries,secretNumber)
     @countTries = countTries
     @secretNumber = secretNumber
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
end