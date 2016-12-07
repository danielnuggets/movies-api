class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  def show
    @movie = Movie.find(params[:id])
    render 'show.json.jbuilder'
  end
end
