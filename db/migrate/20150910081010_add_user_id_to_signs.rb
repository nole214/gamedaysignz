class AddUserIdToSigns < ActiveRecord::Migration
  def change
    add_column :signs, :user_id, :integer
    add_index :signs, :user_id
  end
end
