class AddFriendresponseToEntries < ActiveRecord::Migration[5.2]
  def change
    add_column :entries, :friendresponse, :string
  end
end
