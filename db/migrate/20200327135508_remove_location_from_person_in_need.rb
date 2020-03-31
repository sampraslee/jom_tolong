class RemoveLocationFromPersonInNeed < ActiveRecord::Migration[6.0]
  def change

    remove_column :person_in_needs, :location, :string
  end
end
