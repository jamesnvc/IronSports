class CreateOlyMeets < ActiveRecord::Migration
  def change
    create_table :oly_meets do |t|
      t.string :title
      t.datetime :occured

      t.timestamps
    end

    create_table :oly_meet_results do |t|
      t.string :lifter
      t.decimal :weight
      t.string :gender
      t.decimal :snatch1, precision: 6, scale: 3
      t.decimal :snatch2, precision: 6, scale: 3
      t.decimal :snatch3, precision: 6, scale: 3
      t.boolean :snatch1_success
      t.boolean :snatch2_success
      t.boolean :snatch3_success
      t.decimal :cleanandjerk1, precision: 6, scale: 3
      t.decimal :cleanandjerk2, precision: 6, scale: 3
      t.decimal :cleanandjerk3, precision: 6, scale: 3
      t.boolean :cleanandjerk1_success
      t.boolean :cleanandjerk2_success
      t.boolean :cleanandjerk3_success

      t.belongs_to :oly_meet
      t.timestamps
    end
  end
end
