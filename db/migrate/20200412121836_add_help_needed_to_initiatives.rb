class AddHelpNeededToInitiatives < ActiveRecord::Migration[6.0]
  def change
    add_column :initiatives, :help_needed, :string
  end
end
