class AddHelpTypeToInitiatives < ActiveRecord::Migration[6.0]
  def change
    add_column :initiatives, :help_type, :string
  end
end
