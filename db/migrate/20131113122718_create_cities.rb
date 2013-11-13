class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.string :slug
      t.string :type
      t.references :province, index: true
      t.references :state, index: true

      t.timestamps
    end
    add_index :cities, :name
    add_index :cities, :slug
    add_index :cities, :type
  end
end
