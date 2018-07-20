class CreateShoesStores < ActiveRecord::Migration[5.2]
  def change
    create_table(:shoes_stores) do |t|
    t.column(:shoes_id, :int)
    t.column(:stores_id, :int)

    end
  end
end
