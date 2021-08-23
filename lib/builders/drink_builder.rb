require 'models/drink'

class DrinkListBuilder
    def drink_list_builder(prices_json)
        drink_list = []

        JSON.parse(prices_json).each do |drink|
            if !drink['drink_name'].nil? and !drink['prices'].nil?
                drink_list.push(Drink.new(drink['drink_name'], drink['prices']))
            end
        end 
        drink_list
    end
end