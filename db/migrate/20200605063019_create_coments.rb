class CreateComents < ActiveRecord::Migration[5.2]
  def change
    create_table :coments do |t|
      t.text :text ,null: false
      t.references :post ,null: false, foreign_key: true
      t.references :user ,null: false, foreign_key: true
      t.timestamps
    end
  end
end



