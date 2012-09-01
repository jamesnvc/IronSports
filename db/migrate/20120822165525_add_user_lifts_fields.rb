class AddUserLiftsFields < ActiveRecord::Migration
  def change
    add_column :users, :squat_max, 'NUMERIC(6,3)'
    add_column :users, :bench_max, 'NUMERIC(6,3)'
    add_column :users, :deadlift_max, 'NUMERIC(6,3)'
  end
end
