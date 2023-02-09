class AddDescriptionToProgresses < ActiveRecord::Migration[6.1]
  def change
    add_column :progresses, :description, :string
  end
end
