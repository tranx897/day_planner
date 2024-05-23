class FeelingsLevel3sController < ApplicationController
  def index
    matching_feelings_level_3s = FeelingsLevel3.all

    @list_of_feelings_level_3s = matching_feelings_level_3s.order({ :created_at => :desc })

    render({ :template => "feelings_level_3s/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_feelings_level_3s = FeelingsLevel3.where({ :id => the_id })

    @the_feelings_level_3 = matching_feelings_level_3s.at(0)

    render({ :template => "feelings_level_3s/show" })
  end

  def create
    the_feelings_level_3 = FeelingsLevel3.new
    the_feelings_level_3.name = params.fetch("query_name")
    the_feelings_level_3.description = params.fetch("query_description")
    the_feelings_level_3.feeling_level2_id = params.fetch("query_feeling_level2_id")

    if the_feelings_level_3.valid?
      the_feelings_level_3.save
      redirect_to("/feelings_level_3s", { :notice => "Feelings level 3 created successfully." })
    else
      redirect_to("/feelings_level_3s", { :alert => the_feelings_level_3.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_feelings_level_3 = FeelingsLevel3.where({ :id => the_id }).at(0)

    the_feelings_level_3.name = params.fetch("query_name")
    the_feelings_level_3.description = params.fetch("query_description")
    the_feelings_level_3.feeling_level2_id = params.fetch("query_feeling_level2_id")

    if the_feelings_level_3.valid?
      the_feelings_level_3.save
      redirect_to("/feelings_level_3s/#{the_feelings_level_3.id}", { :notice => "Feelings level 3 updated successfully."} )
    else
      redirect_to("/feelings_level_3s/#{the_feelings_level_3.id}", { :alert => the_feelings_level_3.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_feelings_level_3 = FeelingsLevel3.where({ :id => the_id }).at(0)

    the_feelings_level_3.destroy

    redirect_to("/feelings_level_3s", { :notice => "Feelings level 3 deleted successfully."} )
  end
end
