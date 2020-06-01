require 'GlobalVariables.rb'
require 'VacasYToros.rb'

RSpec.describe GlobalVariables do
    before { @globalVariables = GlobalVariables.new(10,"1234",VacasYToros.new()) }

   
    it 'devuelve' do
        expect( @globalVariables.getCounterTries()).to eq 10
    end
   
    it 'devuelve' do
        expect( @globalVariables.setCounterTries(100)).to eq 100
    end
    
    it 'numeroSecreto' do
        expect( @globalVariables.getSecretNumber()).to eq "1234"
    end
    it 'numeroSecreto' do
        expect( @globalVariables.setSecretNumber("3456")).to eq "3456"
    end
    it 'ingresar numero' do
        expect( @globalVariables.runGame("1234")).to eq "4 toros y 0 vacas"
    end
end 

