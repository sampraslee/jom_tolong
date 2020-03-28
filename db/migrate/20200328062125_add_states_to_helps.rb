class AddStatesToHelps < ActiveRecord::Migration[6.0]
  def change
    add_reference :helps, :states, null: false, foreign_key: true
  end
end
