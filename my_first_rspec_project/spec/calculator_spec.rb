require_relative '../calculator'

RSpec.describe Calculator do
    before(:each) do
        @calc = Calculator.new
    end

    it 'deve somar dois números corretamente' do
        expect(@calc.soma(2, 3)).to eq(5)
    end

    it 'deve subtrair dois números corretamente' do
        expect(@calc.subtrai(5, 3)).to eq(2)
    end
end
