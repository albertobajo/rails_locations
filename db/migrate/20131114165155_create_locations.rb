class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :number
      t.references :postcode, index: true
      t.references :city, index: true

      t.timestamps
    end
  end
end
