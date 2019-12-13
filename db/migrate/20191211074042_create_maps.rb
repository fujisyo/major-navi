class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.integer :prefecture, null: false, default: 0
      t.string :stadium, null: false
      t.timestamps
    end
  end
end
