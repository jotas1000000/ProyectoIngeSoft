require 'VacasYToros.rb'

RSpec.describe VacasYToros do

    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.play('','')).to eq ''
    end
end