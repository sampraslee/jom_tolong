class RemoveDistrictsFromHelps < ActiveRecord::Migration[6.0]
  def change
    remove_reference :helps, :districts, null: false, foreign_key: true
  end
end
