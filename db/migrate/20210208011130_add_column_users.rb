class AddColumnUsers < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :name, :string
  end

  def down
    remove_column :users, :nickname, :string
  end
end
