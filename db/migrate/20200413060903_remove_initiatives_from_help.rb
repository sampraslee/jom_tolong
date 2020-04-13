class RemoveInitiativesFromHelp < ActiveRecord::Migration[6.0]
  def change
    remove_reference :helps, :initiative, null: false, foreign_key: true
  end
end
