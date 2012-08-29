class Survey < ActiveRecord::Base

  attr_accessor :human_check

  attr_accessible :question_01, :question_10, :question_11, :question_12, :question_13, :question_14, :question_15, :question_16, :question_17, :question_02, :question_03, :question_04, :question_05, :question_06, :question_07, :question_08, :question_09, :human_check



  validates_presence_of :question_01
  validates_presence_of :question_02
  validates_presence_of :question_03, :if => :sch?
  validates_presence_of :question_04, :if => :sch?
  validates_presence_of :question_05, :if => :sch?
  validates_presence_of :question_06, :if => :sch?
  validates_presence_of :question_07, :if => :sch?
  validates_presence_of :question_08
  validates_presence_of :question_09
  validates_presence_of :question_10
  validates_presence_of :question_11
  validates_presence_of :question_12
  validates_presence_of :question_13
  validates_presence_of :question_14
  validates_presence_of :question_15
  validates_presence_of :question_16
  validates_presence_of :question_17
  validates_inclusion_of :human_check, :in => %w(5 five)

  def sch?
    question_02 == "School Health Coordinator"
  end

end
