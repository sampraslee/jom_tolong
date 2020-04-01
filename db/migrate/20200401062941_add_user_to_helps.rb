class AddUserToHelps < ActiveRecord::Migration[6.0]
  def change
    add_reference :helps, :user, null: false, foreign_key: true
  end
end
