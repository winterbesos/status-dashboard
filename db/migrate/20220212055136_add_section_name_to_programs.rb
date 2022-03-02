class AddSectionNameToPrograms < ActiveRecord::Migration[6.1]
  def change
    add_column :programs, :sction_name, :string
  end
end
