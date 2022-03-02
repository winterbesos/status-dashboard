class AddProgramToProgresses < ActiveRecord::Migration[6.1]
  def change
    add_reference :progresses, :program, null: false, foreign_key: true
    remove_reference :progresses, :progress
  end
end
