class RemoveHelpFromInitiatives < ActiveRecord::Migration[6.0]
  def change
    remove_reference :initiatives, :help, null: false, foreign_key: true
  end
end
