class AddUserLiftsFields < ActiveRecord::Migration
  def change
    add_column :users, :squat_max, :number
    add_column :users, :bench_max, :number
    add_column :users, :deadlift_max, :number
  end
end
