class MoviesController < ApplicationController
  
  def index
    @movies = Movie.all
  end

  def create
    @movie = Movie.new(movie_params)
    flash[:notice] = "投稿しました。"
    redirect_to root_path
  end

  def edit 
  end

  def update
    @movie = Movie.update(movie_params)
    flash[:notice] = "更新しました"
    redirect_to root_path
  end

  def destroy
    @movie = Movie.destroy(movie_params)
    flash[:notice] = "削除しました"
    redirect_to root_path
  end
end
