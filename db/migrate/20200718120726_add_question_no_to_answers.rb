class AddQuestionNoToAnswers < ActiveRecord::Migration[6.0]
  def change
    add_column :answers, :question_number, :integer
  end
end
