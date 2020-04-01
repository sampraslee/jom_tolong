class RenamePersonInNeedToUsers < ActiveRecord::Migration[6.0]
  def change
    rename_table :person_in_needs, :users
  end
end
