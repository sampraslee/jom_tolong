class AddDistrictToHelps < ActiveRecord::Migration[6.0]
  def change
    add_reference :helps, :district, null: true, foreign_key: true
  end
end
