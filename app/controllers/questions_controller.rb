class QuestionsController < ApplicationController
  def index
    @questions = category.questions
  end

  def show
    @question = Question.find(params[:id])
  end

private
  def question_params
    params.require(:question).permit(:diffculty, :title)
  end

  def category
    @category ||= Category.find(params[:category_id])
  end

end
