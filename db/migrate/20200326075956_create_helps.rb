class CreateHelps < ActiveRecord::Migration[6.0]
  def change
    create_table :helps do |t|
      t.integer :help_type
      t.text :description
      t.belongs_to :person_in_need, index: true
      t.timestamps
    end
  end
end
