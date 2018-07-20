class Shoe < ActiveRecord::Base
  has_and_belongs_to_many(:stores)

  def where
    # find name of store that store_id is on shoe instance
    name = Store.find(:store_id)
    name
  end
end
