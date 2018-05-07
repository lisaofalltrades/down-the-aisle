class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.references :event
      t.references :guest
      t.boolean :attending
      t.text :comment
      t.boolean :table_assignment

      t.timestamps
    end
  end
end
