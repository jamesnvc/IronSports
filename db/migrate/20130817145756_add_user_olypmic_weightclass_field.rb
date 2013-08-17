class AddUserOlypmicWeightclassField < ActiveRecord::Migration
  def change
    add_column :users, :oly_weight_class, :string
  end
end
