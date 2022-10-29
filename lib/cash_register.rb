class CashRegister
    attr_accessor :total, :discount, :items, :last_item
    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = [] 
        @last_item = []
    end

    def add_item(title, price, quantity=1)
        @total += price * quantity
        @last_item = price * quantity
        quantity.times do
            @items << title
        end
    end

    def apply_discount
        @total = 1000
        if discount != 0
            @total -= ((@discount*0.01*@total).to_i)
            "After the discount, the total comes to $#{@total}."
        else 
            "There is no discount to apply."
        end
    end

    def items
        @items 
    end

    def void_last_transaction
        @total -= @last_item
    end

    def total
        @total
    end

    def self.all
        @@all
    end
end
