require 'models/drink'

describe Drink do
    it 'Drink object creation' do
        drink_name = "mocha"
        drink_price = {"small":4.0, "medium":4.5, "large":5.0}
        drink = Drink.new(drink_name, drink_price)
        expect(drink.class).to eq(Drink)
    end
    it 'Drink object creation with one price' do
        drink_name = "mocha"
        drink_price = {"medium":4.5}
        drink = Drink.new(drink_name, drink_price)
        expect(drink.class).to eq(Drink)
    end
end