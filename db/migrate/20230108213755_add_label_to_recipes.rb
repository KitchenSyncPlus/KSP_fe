class AddLabelToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :label, :string
  end
end
