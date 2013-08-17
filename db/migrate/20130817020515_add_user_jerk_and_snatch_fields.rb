class AddUserJerkAndSnatchFields < ActiveRecord::Migration
  def change
    add_column :users, :snatch_max, 'NUMERIC(6,3)'
    add_column :users, :clean_and_jerk_max, 'NUMERIC(6,3)'
  end
end
