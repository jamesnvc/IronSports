class CreateMeets < ActiveRecord::Migration
  def change
    create_table :meets do |t|
      t.string :title

      t.timestamps
    end

    create_table :meet_results do |t|
      t.string :lifter
      t.decimal :weight
      t.string :gender
      t.decimal :squat1, precision: 6, scale: 3
      t.decimal :squat2, precision: 6, scale: 3
      t.decimal :squat3, precision: 6, scale: 3
      t.boolean :squat1_success
      t.boolean :squat2_success
      t.boolean :squat3_success
      t.decimal :bench1, precision: 6, scale: 3
      t.decimal :bench2, precision: 6, scale: 3
      t.decimal :bench3, precision: 6, scale: 3
      t.boolean :bench1_success
      t.boolean :bench2_success
      t.boolean :bench3_success
      t.decimal :deadlift1, precision: 6, scale: 3
      t.decimal :deadlift2, precision: 6, scale: 3
      t.decimal :deadlift3, precision: 6, scale: 3
      t.boolean :deadlift1_success
      t.boolean :deadlift2_success
      t.boolean :deadlift3_success

      t.belongs_to :meet
      t.timestamps
    end
  end
end
