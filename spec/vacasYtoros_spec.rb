require 'VacasYToros.rb'

RSpec.describe VacasYToros do

    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.play('1234','1234')).to eq '4 toros y 0 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.play('1934','1234')).to eq '3 toros y 0 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.play('4321','1234')).to eq '0 toros y 4 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.play('1892','1389')).to eq '1 toros y 2 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.play('1293','2391')).to eq '1 toros y 3 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        vacasYtoros.validateNumbers()
        expect(vacasYtoros.play('1293','2391')).to eq '1 toros y 3 vacas'
    end
end