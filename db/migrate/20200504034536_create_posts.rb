class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text       :title , null: false
      t.string     :image
      t.text       :text,   null: false
      t.integer    :tag_id, null: false,foreign_key: true
      t.integer    :user_id, null: false,foreign_key: true
      t.timestamps
    end
  end
end
