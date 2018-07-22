class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)
  # before_save(:money)
  before_save(:titlecase)
  validates(:brand, {:presence => true})
  validates(:brand, {:length => { :maximum => 100 }})
  validates(:brand, {:uniqueness => true })
  validates :price, {:presence => true}
  validates_numericality_of :price, :greater_than => 0


  def titlecase
    self.brand = brand.split.map(&:capitalize).join(' ')
  end

  def where
    # find name of store that store_id is on shoe instance
    name = Store.find(:store_id)
    name
  end

  def money
    self.price = format("$%.2f",price)
    # sprintf("%.2f",(self.price))
    # self.price = '%.2f' % (self.price).to_i
    # self.price = amount(price, :minimum_precision => 2, :separator => '.')
    # self.price = price.round(2)
  end
end
