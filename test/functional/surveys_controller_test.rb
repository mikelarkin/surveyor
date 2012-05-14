require 'test_helper'

class SurveysControllerTest < ActionController::TestCase
  setup do
    @survey = surveys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:surveys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey" do
    assert_difference('Survey.count') do
      post :create, survey: { code: @survey.code, description: @survey.description, question_10: @survey.question_10, question_11: @survey.question_11, question_12: @survey.question_12, question_13: @survey.question_13, question_14: @survey.question_14, question_15: @survey.question_15, question_16: @survey.question_16, question_1: @survey.question_1, question_2: @survey.question_2, question_3: @survey.question_3, question_4: @survey.question_4, question_5: @survey.question_5, question_6: @survey.question_6, question_7: @survey.question_7, question_8: @survey.question_8, question_9: @survey.question_9, title: @survey.title }
    end

    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should show survey" do
    get :show, id: @survey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @survey
    assert_response :success
  end

  test "should update survey" do
    put :update, id: @survey, survey: { code: @survey.code, description: @survey.description, question_10: @survey.question_10, question_11: @survey.question_11, question_12: @survey.question_12, question_13: @survey.question_13, question_14: @survey.question_14, question_15: @survey.question_15, question_16: @survey.question_16, question_1: @survey.question_1, question_2: @survey.question_2, question_3: @survey.question_3, question_4: @survey.question_4, question_5: @survey.question_5, question_6: @survey.question_6, question_7: @survey.question_7, question_8: @survey.question_8, question_9: @survey.question_9, title: @survey.title }
    assert_redirected_to survey_path(assigns(:survey))
  end

  test "should destroy survey" do
    assert_difference('Survey.count', -1) do
      delete :destroy, id: @survey
    end

    assert_redirected_to surveys_path
  end
end
