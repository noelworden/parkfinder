class CreateParks < ActiveRecord::Migration
  def change
    create_table :parks do |t|
      t.string :parktype
      t.string :parkname
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
