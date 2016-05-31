class RecommendationsController < ApplicationController

  def index
  end

  def new
    # if Book.find_by(:title)
    @book = Book.new
    @recommendation = Recommendation.new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

end