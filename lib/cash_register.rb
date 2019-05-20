class CashRegister

attr_accessor :total, :discount, :last_transaction, :items

def initialize(discount = 0)
  @total = 0
  @discount = discount
  @items = []
end

def add_item(title, price, quantity = 1)
  self.total += price * quantity
  self.last_transaction = price * quantity
  quantity.times do
    self.items << title
  end
end


def apply_discount
    if @discount != 0
      pc_discount = 1 - @discount/100.0 
      @total = @total*pc_discount    
      return "After the discount, the total comes to $#{@total.to_i}."
    else
      return "There is no discount to apply."
    end 
  end

def



   end