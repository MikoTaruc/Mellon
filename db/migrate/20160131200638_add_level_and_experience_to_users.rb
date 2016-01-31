class AddLevelAndExperienceToUsers < ActiveRecord::Migration
  def change
    add_column :users, :level, :integer, :null => false, :default => 1
    add_column :users, :experience, :integer, :null => false, :default => 0
  end
end
