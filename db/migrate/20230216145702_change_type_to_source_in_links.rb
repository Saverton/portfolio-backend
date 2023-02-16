class ChangeTypeToSourceInLinks < ActiveRecord::Migration[7.0]
  def change
    rename_column :links, :type, :source
  end
end
