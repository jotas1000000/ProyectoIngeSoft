require 'GlobalVariables.rb'

RSpec.describe GlobalVariables do
    before { @globalVariables = GlobalVariables.new(10) }
   
    it 'devuelve' do
        expect( @globalVariables.getCounterTries()).to eq 10
    end
   
end 