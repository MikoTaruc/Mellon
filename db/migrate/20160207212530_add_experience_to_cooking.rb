class AddExperienceToCooking < ActiveRecord::Migration
  def change
    add_column :cookings, :experience, :integer, :null => false, :default => 0
  end
end
