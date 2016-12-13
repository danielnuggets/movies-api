class Api::V1::MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render 'index.json.jbuilder'
  end

  def show
    @movie = Movie.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @movie = Movie.create(
      title: params[:title],
      duration: params[:duration],
      genre: params[:genre],
      description: params[:description]
      ) 
    render 'show.json.jbuilder'
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.duration = params[:duration] || @movie.duration
    @movie.genre = params[:genre] || @movie.genre
    @movie.description = params[:description] || @movie.description
    @movie.save
    render 'show.json.jbuilder'
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
  end
end
