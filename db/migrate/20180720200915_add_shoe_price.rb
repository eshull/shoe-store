class AddShoePrice < ActiveRecord::Migration[5.2]
  def change
    add_column(:shoes, :price, :int)
  end
end
