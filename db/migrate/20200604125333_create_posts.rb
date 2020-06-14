class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :memo , null: false
      t.text :menu1 , null: false
      t.text :menu2 
      t.text :menu3 
      t.text :menu4 
      t.text :menu5 
      t.string :image
      t.references :user , null: false,foreign_key: true
      t.timestamps
    end
  end
end



