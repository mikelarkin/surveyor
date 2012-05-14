class Survey < ActiveRecord::Base
  attr_accessible :code, :description, :question_01, :question_10, :question_11, :question_12, :question_13, :question_14, :question_15, :question_16, :question_02, :question_03, :question_04, :question_05, :question_06, :question_07, :question_08, :question_09, :title


  validates_presence_of :question_01
  validates_presence_of :question_02
  validates_presence_of :question_03, :if => :sch?
  validates_presence_of :question_04, :if => :sch?
  validates_presence_of :question_05, :if => :sch?
  validates_presence_of :question_06, :if => :sch?
  validates_presence_of :question_07
  validates_presence_of :question_08
  validates_presence_of :question_09
  validates_presence_of :question_10
  validates_presence_of :question_11
  validates_presence_of :question_12
  validates_presence_of :question_13
  validates_presence_of :question_14
  validates_presence_of :question_15
  validates_presence_of :question_16


  def sch?
    return false
  end

  def self.generate(number)
    number.times do
      survey = Survey.new(:code => (0...8).map { 65.+(rand(25)).chr }.join)
      survey.save(:validate => false)
    end

  end

end
