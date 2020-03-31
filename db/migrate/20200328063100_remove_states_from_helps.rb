class RemoveStatesFromHelps < ActiveRecord::Migration[6.0]
  def change
    remove_reference :helps, :states, null: false, foreign_key: true
  end
end
