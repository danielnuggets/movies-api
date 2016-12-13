class Api::V2::MoviesController < ApplicationController
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
    if params[:title]
      @movie.title = params[:title]
    end
    if params[:duration]
      @movie.title = params[:duration]
    end
    if params[:genre]
      @movie.title = params[:genre]
    end
    if params[:description]
      @movie.title = params[:description]
    end
    @movie.save
    render 'show.json.jbuilder'
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
  end
end
