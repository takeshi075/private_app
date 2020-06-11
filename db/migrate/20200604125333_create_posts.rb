class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :memo , null: false
      t.string :menu, null: false
      t.string :weight_id, null: false
      t.string :repetition_id, null: false
      t.string :set_count_id, null: false
      t.string :image
      t.references :user , null: false,foreign_key: true
      t.timestamps
    end
  end
end



