class AddDescriptionToChampion < ActiveRecord::Migration
  def change
    add_column :champions, :description, :string
    add_index :champions, :description
  end
end
