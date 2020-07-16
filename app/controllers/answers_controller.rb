class AnswersController < ApplicationController
  def index
    @answers = question.answers
  end

  def show
    @answers = Answers.find(params[:id])
  end

private
  def question_params
    params.require(:answers).permit(:correct, :title)
  end

  def category
    @question ||= Question.find(params[:category_id])
  end

end
