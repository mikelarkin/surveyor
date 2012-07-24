class WelcomeController < ApplicationController
  # GET /welcome
  # GET /welcome.json
  def index
    respond_to do |format|
      format.html # index.html.erb
    end
  end


  def new
    @survey = Survey.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @survey }
    end
  end

  def create
    @survey = Survey.new(params[:survey])

    # Log that we've completed the survey
    #@survey.completed_at = DateTime.now
    respond_to do |format|
      if @survey.save
        format.html { redirect_to thanks_url }
        format.json { render :json => @survey, :status => :created, :location => @survey }
      else
        format.html { render :action => "new" }
        format.json { render :json => @survey.errors, :status => :unprocessable_entity }
      end
    end
  end

  def thanks
    respond_to do |format|
      format.html # thanks.html.erb
    end
  end

end
