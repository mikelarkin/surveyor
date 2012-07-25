ActiveAdmin::Dashboards.build do

  section "Recent Survey Completions", :priority => 1 do
    table_for Survey.order('created_at desc').limit(10) do
      column("ID")  { |survey| link_to "##{survey.id} ", admin_survey_path(survey) }
      column("Completed At") { |survey| link_to survey.created_at.strftime("%m/%d/%y"), admin_survey_path(survey) }
      column("District")  { |survey| link_to "#{survey.question_01} ", admin_survey_path(survey) }
      column("Position")  { |survey| link_to "#{survey.question_02} ", admin_survey_path(survey) }
    end
  end

end
