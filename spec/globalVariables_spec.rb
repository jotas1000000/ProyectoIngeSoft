require 'GlobalVariables.rb'
require 'VacasYToros.rb'

RSpec.describe GlobalVariables do
    before { @globalVariables = GlobalVariables.new(10) }
   
    it 'devuelve' do
        expect( @globalVariables.getCounterTries()).to eq 10
    end
   
    it 'devuelve' do
        expect( @globalVariables.setCounterTries(100)).to eq 100
    end
    
end 

