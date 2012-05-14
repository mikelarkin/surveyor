class SurveysController < ApplicationController
  active_scaffold :survey do |conf|
    config.label = "Surveys"
    config.columns = [:code, :created_at]
    list.columns.exclude :title, :description, :updated_at
    list.sorting = {:created_at => 'ASC'}

    columns[:question_01].label = "Answer 1"
    columns[:question_02].label = "Answer 2"
    columns[:question_03].label = "Answer 3"
    columns[:question_04].label = "Answer 4"
    columns[:question_05].label = "Answer 5"
    columns[:question_06].label = "Answer 6"
    columns[:question_07].label = "Answer 7"
    columns[:question_08].label = "Answer 8"
    columns[:question_09].label = "Answer 9"
    columns[:question_10].label = "Answer 10"
    columns[:question_11].label = "Answer 11"
    columns[:question_12].label = "Answer 12"
    columns[:question_13].label = "Answer 13"
    columns[:question_14].label = "Answer 14"
    columns[:question_15].label = "Answer 15"
    columns[:question_16].label = "Answer 16"


  end
end