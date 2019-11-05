class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :title, null: false
      t.string :color, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
