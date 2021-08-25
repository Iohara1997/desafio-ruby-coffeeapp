require 'models/drink'

class DrinkListBuilder
  def drink_list_builder(prices_json)
    drink_list = []

    JSON.parse(prices_json).each do |drink|
      drink_list.push(Drink.new(drink['drink_name'], drink['prices'])) if Drink.valid_drink(drink)
    end
    drink_list
  end
end
