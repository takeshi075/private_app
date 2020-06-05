class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :menu, null: false
      t.string :weight_id, null: false
      t.string :repetition_id, null: false
      t.string :set_count_id, null: false
      t.references :post ,null: false, foreign_key: true
      t.timestamps
    end
  end
end


