class CategoryController < ApplicationController
  def index
    @category = Category.all
  end

  
private
  def category_params
    params.require(:category).permit(:title, :description)
  end


end
