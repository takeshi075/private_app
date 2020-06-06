class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.text :introduction    
      t.string :image    
      t.timestamps
      t.references :user,  null: false,foreign_key: true
    end
  end
end

