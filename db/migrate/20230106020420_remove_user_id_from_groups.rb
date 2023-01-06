class RemoveUserIdFromGroups < ActiveRecord::Migration[5.2]
  def change
    remove_column :groups, :user_id
  end
end
