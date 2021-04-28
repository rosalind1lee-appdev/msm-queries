class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    render({ :template => "director_template/index.html.erb"})
  end

  def wisest
    @oldest = Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
    render({ :template => "director_template/eldest.html.erb"})
  end

  def youngest
    @young = Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
    render({ :template => "director_template/youngest.html.erb"})
  end
end