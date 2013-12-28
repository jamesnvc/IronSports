class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.boolean :private
      t.text :content
      t.string :title

      t.timestamps
    end
  end
end
