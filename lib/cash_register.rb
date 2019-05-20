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



# def apply_discount
#         if @discount
#             "After the discount, the total comes to $#{@total -= (@total * (@discount/100.0)).to_i}."
#           else "There is no discount to apply."
#         end
#     end
#   end
    
   