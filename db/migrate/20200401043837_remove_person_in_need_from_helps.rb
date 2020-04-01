class RemovePersonInNeedFromHelps < ActiveRecord::Migration[6.0]
  def change
    remove_reference :helps, :person_in_need, null: false, foreign_key: false
  end
end
