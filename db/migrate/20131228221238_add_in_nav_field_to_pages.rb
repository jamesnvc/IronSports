class AddInNavFieldToPages < ActiveRecord::Migration
  def change
    add_column :pages, :in_nav, :boolean
  end
end
