class RemoveStatesFromPersonInNeeds < ActiveRecord::Migration[6.0]
  def change
    remove_reference :person_in_needs, :state, null: false, foreign_key: true
  end
end
