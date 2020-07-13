class QuestionController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
  end

private
  def question_params
    params.require(:question).permit(:diffculty, :title)
  end


end
