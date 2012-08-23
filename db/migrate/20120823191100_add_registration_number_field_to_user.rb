class AddRegistrationNumberFieldToUser < ActiveRecord::Migration
  def change
    add_column :users, :registration_number, :integer
  end
end
