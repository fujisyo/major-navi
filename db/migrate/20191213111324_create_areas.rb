class CreateAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :areas do |t|
      t.string :area, null: false
      t.timestamps
    end
  end
end
