class CreateCookings < ActiveRecord::Migration
  def change
    create_table :cookings do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :level, :null => false, :default => 1

      t.timestamps null: false
    end
  end
end
