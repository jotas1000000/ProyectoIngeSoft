class GlobalVariables
    def initialize(countTries)
     @countTries = countTries
    end
    
    def getCounterTries()
        return @countTries
    end

    def setCounterTries(numberCounterTries)
        @countTries = numberCounterTries
        return @countTries
    end
end