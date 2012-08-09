class AddUserInfoFields < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :birthdate, :date
    add_column :users, :studying, :string
    add_column :users, :graduating, :string
    add_column :users, :bodyweight, :decimal
    add_column :users, :weight_class, :string
  end
end
