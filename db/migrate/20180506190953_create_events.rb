class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :address
      t.datetime :start_time
      t.datetime :end_time
      t.references :wedding

      t.timestamps
    end
  end
end
