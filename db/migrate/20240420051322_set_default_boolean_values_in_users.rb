class SetDefaultBooleanValuesInUsers < ActiveRecord::Migration[7.1]
  def change
    change_column :users, :is_mentor, :boolean, default: false
    change_column :users, :joined_mentor_program, :boolean, default: false
  end
end
