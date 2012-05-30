class AddAnotherQuestion < ActiveRecord::Migration
  def up
    add_column :surveys, :question_17, :string
  end

  def down
    remove_column :surveys, :question_17
  end
end
