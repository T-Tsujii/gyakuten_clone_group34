class MoviesController < ApplicationController
  PER_PAGE = 12
  
  def index
    @movies = Movie.all.page(params[:page]).per(PER_PAGE)
  end

  
end
