class CreateSpaceships < ActiveRecord::Migration[5.1]
  def change
    create_table :spaceships do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.text :description
      t.references :user, foreign_key: true
      t.integer :speed
      t.string :weaponry

      t.timestamps
    end
  end
end
