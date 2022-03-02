class CreateProgresses < ActiveRecord::Migration[6.1]
  def change
    create_table :progresses do |t|
      t.datetime :begun_at
      t.datetime :ended_at
      t.integer :status
      t.string :creator
      t.float :progress
      t.references :progress, null: false, foreign_key: true

      t.timestamps
    end
  end
end
