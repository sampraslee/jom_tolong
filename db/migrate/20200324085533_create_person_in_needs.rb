class CreatePersonInNeeds < ActiveRecord::Migration[6.0]
  def change
    create_table :person_in_needs do |t|
      t.string :name
      t.string :phone_number
      t.string :location

      t.timestamps
    end
  end
end
