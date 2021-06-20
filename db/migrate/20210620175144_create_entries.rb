class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :incident_id
      t.string :content

      t.timestamps
    end
  end
end
