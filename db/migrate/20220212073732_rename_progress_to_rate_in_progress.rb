class RenameProgressToRateInProgress < ActiveRecord::Migration[6.1]
  def change
    rename_column :progresses, :progress, :rate
  end
end
