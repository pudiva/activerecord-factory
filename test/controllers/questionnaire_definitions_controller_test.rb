require "test_helper"

class QuestionnaireDefinitionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @questionnaire_definition = questionnaire_definitions(:one)
  end

  test "should get index" do
    get questionnaire_definitions_url
    assert_response :success
  end

  test "should get new" do
    get new_questionnaire_definition_url
    assert_response :success
  end

  test "should create questionnaire_definition" do
    assert_difference("QuestionnaireDefinition.count") do
      post questionnaire_definitions_url, params: { questionnaire_definition: { schema: @questionnaire_definition.schema, title: @questionnaire_definition.title } }
    end

    assert_redirected_to questionnaire_definition_url(QuestionnaireDefinition.last)
  end

  test "should show questionnaire_definition" do
    get questionnaire_definition_url(@questionnaire_definition)
    assert_response :success
  end

  test "should get edit" do
    get edit_questionnaire_definition_url(@questionnaire_definition)
    assert_response :success
  end

  test "should update questionnaire_definition" do
    patch questionnaire_definition_url(@questionnaire_definition), params: { questionnaire_definition: { schema: @questionnaire_definition.schema, title: @questionnaire_definition.title } }
    assert_redirected_to questionnaire_definition_url(@questionnaire_definition)
  end

  test "should destroy questionnaire_definition" do
    assert_difference("QuestionnaireDefinition.count", -1) do
      delete questionnaire_definition_url(@questionnaire_definition)
    end

    assert_redirected_to questionnaire_definitions_url
  end
end
