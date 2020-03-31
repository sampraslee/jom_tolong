class AddDistrictsToHelps < ActiveRecord::Migration[6.0]
  def change
    add_reference :helps, :districts, null: false, foreign_key: true
  end
end
