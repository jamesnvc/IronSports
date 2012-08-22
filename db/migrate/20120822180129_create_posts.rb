class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :context
      t.datetime :published

      t.timestamps
    end
  end
end
