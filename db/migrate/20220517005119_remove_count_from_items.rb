class RemoveCountFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :count, :integer
  end
end
