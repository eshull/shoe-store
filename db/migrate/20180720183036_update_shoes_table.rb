class UpdateShoesTable < ActiveRecord::Migration[5.2]
  def change
     add_column(:shoes, :store_id, :int)
  end
end
