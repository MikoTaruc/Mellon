class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :cooking, index: true, foreign_key: true
      t.string :name
      t.text :ingredients
      t.text :directions

      t.timestamps null: false
    end
  end
end
