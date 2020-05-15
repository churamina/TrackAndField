class CreateDialies < ActiveRecord::Migration[6.0]
  def change
    create_table :dialies do |t|
      t.text :content

      t.timestamps
    end
  end
end
