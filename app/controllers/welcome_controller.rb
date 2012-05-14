class WelcomeController < ApplicationController
  # GET /welcome
  # GET /welcome.json
  def index
    @survey = Survey.new(:code => params[:code])
    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def thanks
    respond_to do |format|
      format.html # thanks.html.erb
    end
  end

  def new
    @survey = Survey.new(:code => params[:code])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @survey }
    end
  end

  def create
    @survey = Survey.find_by_code(params[:code])

    # Log that we've completed the survey
    @survey.completed_at = DateTime.now
    respond_to do |format|
      if @survey.update_attributes(params[:survey])
        format.html { redirect_to thanks_url(@survey.code), :notice => 'Survey was successfully created!' }
        format.json { render :json => @survey, :status => :created, :location => @survey }
      else
        format.html { render :action => "new" }
        format.json { render :json => @survey.errors, :status => :unprocessable_entity }
      end
    end
  end

  # Verifies that the code hasn't been used already
  def verify

    @survey = Survey.find_by_code(params[:code])

    if @survey.present?
      if @survey.completed_at.present?
        @survey.errors.add(:base, "This survey has already been completed!")
        render :action => "index"

      else
        redirect_to take_survey_url(@survey.code)
      end
    else
      @survey = Survey.new
      @survey.errors.add(:base, "Survey not found!  Please make sure the code is typed correctly.")
      render :action => "index"
    end

  end

end
