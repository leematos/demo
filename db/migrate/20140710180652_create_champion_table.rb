class CreateChampionTable < ActiveRecord::Migration
  def change
    create_table :champions do |t|
    	t.string :image_url
    	t.string :name
    end
  end
end
