class QuestionnaireDefinition < ApplicationRecord
  after_create :create_data_table

  def data_table_name
    "questionnaire_#{id}"
  end

  def create_data_table
    self.class.connection.create_table(data_table_name) do |table|
      schema.each do |question, specs|
        table.send(specs["type"], question)
      end
    end
  end

  def data_model
    Class.new(ApplicationRecord).tap do |klass|
      klass.table_name = data_table_name
    end
  end
end
