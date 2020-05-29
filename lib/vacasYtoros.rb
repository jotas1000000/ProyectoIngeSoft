class VacasYToros 
    def play(num,secretNum) 
        if (validateNumbers(num,secretNum))
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
        else
            return "Los numeros no son del mismo tamaño"
        end
    end

    def validateNumbers(num, secretNum)
        if ( num.size == secretNum.size)
            return true
        else
            return false
        end
    end
end