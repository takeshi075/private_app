class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :title , null: false
      t.string :post_image
      t.text :text,null: false
      t.references :tag, null: false,foreign_key: true
      t.references :user, null: false,foreign_key: true
      t.timestamps
    end
  end
end
