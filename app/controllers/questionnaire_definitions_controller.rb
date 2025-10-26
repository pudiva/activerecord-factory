class QuestionnaireDefinitionsController < ApplicationController
  before_action :set_questionnaire_definition, only: %i[ show edit update destroy ]

  # GET /questionnaire_definitions
  def index
    @questionnaire_definitions = QuestionnaireDefinition.all
  end

  # GET /questionnaire_definitions/1
  def show
  end

  # GET /questionnaire_definitions/new
  def new
    @questionnaire_definition = QuestionnaireDefinition.new
  end

  # GET /questionnaire_definitions/1/edit
  def edit
  end

  # POST /questionnaire_definitions
  def create
    @questionnaire_definition = QuestionnaireDefinition.new(questionnaire_definition_params)

    if @questionnaire_definition.save
      redirect_to @questionnaire_definition, notice: "Questionnaire definition was successfully created."
    else
      render :new, status: :unprocessable_content
    end
  end

  # PATCH/PUT /questionnaire_definitions/1
  def update
    if @questionnaire_definition.update(questionnaire_definition_params)
      redirect_to @questionnaire_definition, notice: "Questionnaire definition was successfully updated.", status: :see_other
    else
      render :edit, status: :unprocessable_content
    end
  end

  # DELETE /questionnaire_definitions/1
  def destroy
    @questionnaire_definition.destroy!
    redirect_to questionnaire_definitions_path, notice: "Questionnaire definition was successfully destroyed.", status: :see_other
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaire_definition
      @questionnaire_definition = QuestionnaireDefinition.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def questionnaire_definition_params
      params.expect(questionnaire_definition: [ :title, :schema ])
    end
end
