class VacasYToros 
    def play(num,secretNum) 
        toros = 0
        vacas = 0
        for i in 0...secretNum.size do
            if ( num[i] == secretNum[i] )
                toros += 1
            elsif ( secretNum.include?(num[i].to_s) )
                vacas += 1
            end 
        end
        return "#{toros} toros y #{vacas} vacas"
    end
end