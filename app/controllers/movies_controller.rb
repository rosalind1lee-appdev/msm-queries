class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    render({ :template => "movie_template/index.html.erb"})
  end
  def movie_details
    the_id = params.fetch("an_id").to_i
    @the_movie = Movie.where({ :id => the_id }).at(0)
    #@filmography = Movie.where({ :director_id => @the_director.id})
    render({ :template => "movie_template/show.html.erb"})
  end
end