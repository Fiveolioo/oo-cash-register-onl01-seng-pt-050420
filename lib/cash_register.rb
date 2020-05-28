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
    self.total - (self.total *= @discount  100)
  end
end