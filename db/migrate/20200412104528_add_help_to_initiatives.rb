class AddHelpToInitiatives < ActiveRecord::Migration[6.0]
  def change
    add_reference :initiatives, :help, null: false, foreign_key: true
  end
end
