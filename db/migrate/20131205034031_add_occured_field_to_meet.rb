class AddOccuredFieldToMeet < ActiveRecord::Migration
  def change
    add_column :meets, :occured, :timestamp
  end
end
