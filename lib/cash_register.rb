require 'pry'

class CashRegister
  attr_accessor :total, :discount, :item
 
  def initialize(discount=0)
  @total = 0
  @discount = discount
  end
  
  def add_item(item, cost, quantity=1)
    self.total += cost * quantity
  end
  
  def apply_discount
    if discount!=0
     @total = @total / 100 * (100 - @discount)
    "After the discount, the total comes to $#{@total}."
    else
    "There is no discount to apply."
    end
  end
  
  def items
    @items 
  end
end