class AnswerSheetsController < ApplicationController
  before_action :calculate_score

  def create
    if AnswerSheet.create!(answer_sheet_params)
      redirect_to root_path, notice: "Your quiz has been submited"
    else
      redirect_to root_path, alert: "Something went wrong"
    end
  end

  private

  def calculate_score
    score = 0
    answer_sheet_params[:answers].each_pair do |q_id, a_id|
      question = Question.find_by(id: q_id.gsub("question_id_", ""))
      continue unless question
      answer = question.answers.find_by(id: a_id)
      score += 10 if answer && answer.correct
    end
    params[:answer_sheet][:score] = score
  end

  def answer_sheet_params
    params.require(:answer_sheet).permit(:user_id, :score, answers: params[:answer_sheet][:answers].keys)
  end
end
