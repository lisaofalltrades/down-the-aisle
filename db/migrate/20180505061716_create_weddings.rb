class CreateWeddings < ActiveRecord::Migration[5.2]
  def change
    create_table :weddings do |t|
      t.datetime :date
      t.string :location
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
