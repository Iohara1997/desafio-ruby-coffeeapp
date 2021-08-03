class Drink
    attr_reader :name, :prices

    def initialize(name, prices)
        @name = name 
        @prices = prices
    end
end