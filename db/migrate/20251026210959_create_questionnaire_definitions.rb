class CreateQuestionnaireDefinitions < ActiveRecord::Migration[8.1]
  def change
    create_table :questionnaire_definitions do |t|
      t.string :title
      t.json :schema

      t.timestamps
    end
  end
end
