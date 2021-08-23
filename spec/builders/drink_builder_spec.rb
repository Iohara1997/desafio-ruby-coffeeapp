require 'builders/drink_builder'
require 'json'

describe 'DrinkListBuilder' do
    context 'The hash comes'
    it 'complete' do
        prices_json = [
            { "drink_name": "short espresso", "prices": { "small": 3.03 } },
            { "drink_name": "latte", "prices": { "small": 3.50, "medium": 4.00, "large": 4.50 } },
            { "drink_name": "flat white", "prices": { "small": 3.50, "medium": 4.00, "large": 4.50 } }
        ]
        drink_builder = DrinkListBuilder.new
        drink_list = drink_builder.drink_list_builder(prices_json.to_json)
        expect(drink_list.size).to eq 3
    end
    it 'without prices' do
        prices_json = [
            { "drink_name": "short espresso", "prices": { "small": 3.03 } },
            { "drink_name": "latte" },
            { "drink_name": "flat white", "prices": { "small": 3.50, "medium": 4.00, "large": 4.50 } }
        ]
        drink_builder = DrinkListBuilder.new
        drink_list = drink_builder.drink_list_builder(prices_json.to_json)
        expect(drink_list.size).to eq 2
    end
    it 'without name' do
        prices_json = [
            { "drink_name": "short espresso", "prices": { "small": 3.03 } },
            { "drink_name": "latte", "prices": { "small": 3.50, "medium": 4.00, "large": 4.50 } },
            { "prices": { "small": 3.50, "medium": 4.00, "large": 4.50 } }
        ]
        drink_builder = DrinkListBuilder.new
        drink_list = drink_builder.drink_list_builder(prices_json.to_json)
        expect(drink_list.size).to eq 2
    end
    it 'empty' do
        prices_json = []
        drink_builder = DrinkListBuilder.new
        drink_list = drink_builder.drink_list_builder(prices_json.to_json)
        expect(drink_list.size).to eq 0
    end
end
