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

    def validateNumbers(num, secretNum)
        if ( ((num.to_i).to_s.size == num.size) && ((secretNum.to_i).to_s.size == secretNum.size) )
            if ( (num.to_i).to_s.size == (secretNum.to_i).to_s.size )
                return "Ok"
            else
                return "Los numeros no son del mismo tamano"
            end
        else
            return "El numero no puede tener letras"
        end
    end

    def validateColors(colors, secretColors)
        if ( colors.size == secretColors.size )     
            if( colors.match?(/[1234567890]/) )
                return "No pueden existir numeros en el valor"
            end       
            return "Ok"
        else
            return "Los colores no corresponden con el tamano del secreto"
        end    
    end

    def run(incomingValue, secret , typeGame)
        message = validateNumbers(num,secretNum)
        if( message == "Ok" )
            return play(num,secretNum)
        else
            return message
        end
    end
end

