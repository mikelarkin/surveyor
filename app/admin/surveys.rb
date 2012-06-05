ActiveAdmin.register Survey do

  filter :code
  filter :email
  filter :completed_at

  scope :all
  scope :complete
  scope :incomplete
  scope :unassigned


  index do
    column("Code", :sortable => :code) { |survey| link_to "#{survey.code} ", admin_survey_path(survey) }
    column :email
    column :completed_at
    column("Send Email") { |survey| link_to "Send Email", send_email_admin_survey_path(survey) }
    default_actions
  end


  ### Custom Actions ###

  member_action :send_email do
    @survey = Survey.find(params[:id])
    @survey.send_email
    redirect_to admin_surveys_path(notice: "Email sent")
  end

  collection_action :generate, :method => :post do
    params[:email].split(",").each do |email|
      Survey.generate(email)
    end

    redirect_to admin_surveys_path(notice: "Surveys created!")
  end

  show :title => lambda { |survey| "Survey #{survey.code}" } do
    attributes_table do
      row :code
      row :email
      row :completed_at
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
