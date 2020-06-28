class CreateRms < ActiveRecord::Migration[5.2]
  def change
    create_table :rms do |t|
      t.integer :use_weight
      t.integer :reps
      t.references :user , null: false,foreign_key: true
      t.timestamps
    end
  end
end
