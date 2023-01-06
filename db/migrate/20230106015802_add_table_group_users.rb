class AddTableGroupUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :group_users do |t|
      t.references :user
      t.references :group
    end
  end
end
