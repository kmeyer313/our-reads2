class WelcomeController < ApplicationController

  def index
    @books = Book.all
    @recommendations = Recommendation.all
  end

end
