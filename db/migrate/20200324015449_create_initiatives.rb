class CreateInitiatives < ActiveRecord::Migration[6.0]
  def change
    create_table :initiatives do |t|
      t.string :name
      t.string :location
      t.string :link
      t.string :description

      t.timestamps
    end
  end
end
