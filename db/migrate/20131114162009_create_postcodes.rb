class CreatePostcodes < ActiveRecord::Migration
  def change
    create_table :postcodes do |t|
      t.string :number
      t.references :city, index: true

      t.timestamps
    end
    add_index :postcodes, :number
  end
end
