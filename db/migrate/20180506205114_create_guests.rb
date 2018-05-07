class CreateGuests < ActiveRecord::Migration[5.2]
  def change
    create_table :guests do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :dietary_restrictions
      t.boolean :child
      t.string :category
      t.references :household
      t.references :wedding

      t.timestamps
    end
  end
end
