class CreateIncidents < ActiveRecord::Migration[5.2]
  def change
    create_table :incidents do |t|
      t.string :title
      t.datetime :date

      t.timestamps
    end
  end
end
