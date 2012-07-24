class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :question_01
      t.string :question_02
      t.string :question_03
      t.string :question_04
      t.string :question_05
      t.string :question_06
      t.string :question_07
      t.string :question_08
      t.string :question_09
      t.string :question_10
      t.string :question_11
      t.string :question_12
      t.string :question_13
      t.string :question_14
      t.string :question_15
      t.string :question_16
      t.string :question_17

      t.timestamps
    end
  end
end
