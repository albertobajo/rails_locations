# This migration comes from rails_locations_engine (originally 20131111172057)
class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :name
      t.string :slug
      t.references :country, index: true

      t.timestamps
    end
    add_index :states, :name
    add_index :states, :slug
  end
end
