require 'VacasYToros.rb'

RSpec.describe VacasYToros do

    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('1234','1234')).to eq '4 toros y 0 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('1934','1234')).to eq '3 toros y 0 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('4321','1234')).to eq '0 toros y 4 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('1892','1389')).to eq '1 toros y 2 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('1293','2391')).to eq '1 toros y 3 vacas'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('12293','2391')).to eq 'Algo va mal con los numeros'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('1','2391')).to eq 'Algo va mal con los numeros'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('abcd','2391')).to eq 'Algo va mal con los numeros'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('a1cd','2391')).to eq 'Algo va mal con los numeros'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        expect(vacasYtoros.run('a2cd391','2391')).to eq 'Algo va mal con los numeros'
    end
    it 'devuelve' do
        vacasYtoros = VacasYToros.new()
        vacasYtoros.run('zzzzzz','2391');
        expect(vacasYtoros.run('a2cd391','2391')).to eq 'Algo va mal con los numeros'
    end
end

