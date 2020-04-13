class RemoveHelpTypeFromInitiatives < ActiveRecord::Migration[6.0]
  def change

    remove_column :initiatives, :help_type, :string
  end
end
