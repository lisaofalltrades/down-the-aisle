class CreateHouseholds < ActiveRecord::Migration[5.2]
  def change
    create_table :households do |t|
      t.string :name
      t.string :address
      t.boolean :save_the_date_created
      t.boolean :save_the_date_sent
      t.boolean :invite_created
      t.boolean :invite_sent
      t.references :wedding

      t.timestamps
    end
  end
end
