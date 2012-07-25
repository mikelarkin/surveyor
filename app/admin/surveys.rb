ActiveAdmin.register Survey do

  filter :created_at

  scope :all

  index do
    column("ID", :sortable => :id) { |survey| link_to "#{survey.id} ", admin_survey_path(survey) }
    column("Completed at", :sortable => :created_at) { |survey| link_to "#{survey.created_at.strftime("%m/%d/%y")} ", admin_survey_path(survey) }
    column("District", :sortable => :question_01)  { |survey| link_to "#{survey.question_01} ", admin_survey_path(survey) }
    column("Position",  :sortable => :question_02)  { |survey| link_to "#{survey.question_02} ", admin_survey_path(survey) }

    default_actions
  end


  ### Custom Actions ###
  show :title => lambda { |survey| "Survey ##{survey.id}" } do
    attributes_table do
      row :id
      row :created_at
      row :question_01
      row :question_02
      row :question_03
      row :question_04
      row :question_05
      row :question_06
      row :question_07
      row :question_08
      row :question_09
      row :question_10
      row :question_11
      row :question_12
      row :question_13
      row :question_14
      row :question_15
      row :question_16
      row :question_17
    end
  end


end
