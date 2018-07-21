class UpdateStoreShoeId < ActiveRecord::Migration[5.2]
  def change
      add_column(:stores, :shoe_id, :int)
  end
end
