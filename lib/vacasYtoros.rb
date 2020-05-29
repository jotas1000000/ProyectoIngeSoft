class VacasYToros 
    def play(num,secretNum) 
        toros = 0
        for i in 0...secretNum.size do
            if ( num[i] == secretNum[i] )
                toros += 1
            end
        end
        return "#{toros} toros y 0 vacas"
    end
end