class MakePageTitleUnique < ActiveRecord::Migration
  def change
    add_index :pages, :title, unique: true
  end
end
