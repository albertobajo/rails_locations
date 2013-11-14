# This migration comes from rails_locations_engine (originally 20131111173931)
class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :name
      t.string :slug
      t.references :state, index: true

      t.timestamps
    end
    add_index :provinces, :name
    add_index :provinces, :slug
  end
end
