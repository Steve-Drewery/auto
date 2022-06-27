class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 7, scale: 2

      t.timestamps
    end
  end
end
