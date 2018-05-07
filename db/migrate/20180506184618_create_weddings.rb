class CreateWeddings < ActiveRecord::Migration[5.2]
  def change
    create_table :weddings do |t|
      t.string :nickname
      t.references :user

      t.timestamps
    end
  end
end
