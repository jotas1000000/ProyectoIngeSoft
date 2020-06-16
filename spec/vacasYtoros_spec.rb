require 'VacasYToros.rb'

RSpec.describe VacasYToros do
    before { @vacasYtoros = VacasYToros.new() }
    it 'devuelve' do
        
        expect(@vacasYtoros.run('1234','1234','number')).to eq '4 toros y 0 vacas'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('1934','1234','number')).to eq '3 toros y 0 vacas'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('4321','1234','number')).to eq '0 toros y 4 vacas'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('1892','1389','number')).to eq '1 toros y 2 vacas'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('1293','2391','number')).to eq '1 toros y 3 vacas'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('12293','2391','number')).to eq 'Los numeros no son del mismo tamano'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('1','2391','number')).to eq 'Los numeros no son del mismo tamano'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('abcd','2391','number')).to eq 'El numero no puede tener letras'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('a1cd','2391','number')).to eq 'El numero no puede tener letras'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('a2cd391','2391','number')).to eq 'El numero no puede tener letras'
    end
    it 'devuelve' do
        @vacasYtoros.run('zzzzzz','2391','number');
        expect(@vacasYtoros.run('a2cd391','2391','number')).to eq 'El numero no puede tener letras'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('RAVN','RAVN','colors')).to eq '4 toros y 0 vacas'
    end
    it 'devuelve' do
        expect(@vacasYtoros.run('RAVM','RAVN','colors')).to eq '3 toros y 0 vacas'
    end
end

