class UpdateJoinTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :shoes_stores, :shoes_id, :int
    remove_column :shoes_stores, :stores_id, :int
    add_column :shoes_stores, :shoe_id, :int
    add_column :shoes_stores, :store_id, :int
  end
end
