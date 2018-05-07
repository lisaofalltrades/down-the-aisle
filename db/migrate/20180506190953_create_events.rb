class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.string :location
      t.string :address
      t.date :date
      t.time :start_time
      t.time :end_time
      t.references :wedding

      t.timestamps
    end
  end
end
