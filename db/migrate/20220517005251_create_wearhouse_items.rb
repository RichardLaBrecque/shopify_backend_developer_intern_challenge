class CreateWearhouseItems < ActiveRecord::Migration[5.2]
  def change
    create_table :wearhouse_items do |t|
      t.references :item, foreign_key: true
      t.references :wearhouse, foreign_key: true
      t.integer :count

      t.timestamps
    end
  end
end
