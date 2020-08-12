class AddManagerCheckToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :managerCheck, :boolean
  end
end
