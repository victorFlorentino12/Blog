class MoviesController < ApplicationController
  def create
    movie_name = params[:name]
    movie_released_at = params[:released_at]

    new_movie = Movie.new(name: movie_name, released_at: movie_released_at)

    if new_movie.save
      render json: new_movie, status: 200
    else
      render json: { message: 'error' }, status: 200
    end
  end
end
