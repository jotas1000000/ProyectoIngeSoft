require 'GlobalVariables.rb'
require 'VacasYToros.rb'

RSpec.describe GlobalVariables do
    before { @globalVariables = GlobalVariables.new(10,"1234") }

   
    it 'devuelve' do
        expect( @globalVariables.getCounterTries()).to eq 10
    end
   
    it 'devuelve' do
        expect( @globalVariables.setCounterTries(100)).to eq 100
    end
    
    it 'numeroSecreto' do
        expect( @globalVariables.getSecretNumber()).to eq "1234"
    end
end 

