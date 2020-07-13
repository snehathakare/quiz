class CategoryController < ApplicationController
  def index
    @category = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  
private
  def category_params
    params.require(:category).permit(:title, :description)
  end


end
