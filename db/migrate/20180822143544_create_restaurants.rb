class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :yelpId
      t.string :name
      t.string :image_url
      t.string :location
      t.string :phone
      
      t.timestamps
    end
  end
end
