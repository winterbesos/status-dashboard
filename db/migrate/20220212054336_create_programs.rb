class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :identifier
      t.string :name

      t.timestamps
    end
  end
end
