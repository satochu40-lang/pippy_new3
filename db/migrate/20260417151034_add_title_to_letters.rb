class AddTitleToLetters < ActiveRecord::Migration[7.0]
  def change
    add_column :letters, :title, :string
  end
end
