class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)

  validates(:brand, {:presence => true, :uniqueness => true, :length => { :maximum => 100 }})

  validates :price, {:presence => true}

  validates_numericality_of :price, :greater_than => 0

  def where
    # find name of store that store_id is on shoe instance
    name = Store.find(:store_id)
    name
  end

  def money
    # sprintf("%.2f",(self.price))
    self.price = '%.2f' % (self.price).to_i
    # self.price = amount(price, :minimum_precision => 2, :separator => '.')
    # self.price = price.round(2)
  end
end
