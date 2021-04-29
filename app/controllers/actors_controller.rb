class ActorsController < ApplicationController
  def index
    @list_of_actors = Actor.all
    render({ :template => "actor_template/index.html.erb"})
  end

  def actor_details
    the_id = params.fetch("an_id").to_i
    @the_actor = Actor.where({ :id => the_id }).at(0)
    @filmography = Character.where({ :actor_id => @the_actor.id})
    render({ :template => "actor_template/show.html.erb"})
  end
end