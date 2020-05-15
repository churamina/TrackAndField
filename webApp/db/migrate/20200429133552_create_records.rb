class CreateRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :records do |t|
      t.string :event
      t.string :event

      t.timestamps
    end
  end
end
