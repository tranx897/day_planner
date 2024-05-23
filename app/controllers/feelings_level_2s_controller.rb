class FeelingsLevel2sController < ApplicationController
  def index
    matching_feelings_level_2s = FeelingsLevel2.all

    @list_of_feelings_level_2s = matching_feelings_level_2s.order({ :created_at => :desc })

    render({ :template => "feelings_level_2s/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_feelings_level_2s = FeelingsLevel2.where({ :id => the_id })

    @the_feelings_level_2 = matching_feelings_level_2s.at(0)

    render({ :template => "feelings_level_2s/show" })
  end

  def create
    the_feelings_level_2 = FeelingsLevel2.new
    the_feelings_level_2.name = params.fetch("query_name")
    the_feelings_level_2.description = params.fetch("query_description")
    the_feelings_level_2.feeling_level1_id = params.fetch("query_feeling_level1_id")
    the_feelings_level_2.feelings_level_3s_count = params.fetch("query_feelings_level_3s_count")

    if the_feelings_level_2.valid?
      the_feelings_level_2.save
      redirect_to("/feelings_level_2s", { :notice => "Feelings level 2 created successfully." })
    else
      redirect_to("/feelings_level_2s", { :alert => the_feelings_level_2.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_feelings_level_2 = FeelingsLevel2.where({ :id => the_id }).at(0)

    the_feelings_level_2.name = params.fetch("query_name")
    the_feelings_level_2.description = params.fetch("query_description")
    the_feelings_level_2.feeling_level1_id = params.fetch("query_feeling_level1_id")
    the_feelings_level_2.feelings_level_3s_count = params.fetch("query_feelings_level_3s_count")

    if the_feelings_level_2.valid?
      the_feelings_level_2.save
      redirect_to("/feelings_level_2s/#{the_feelings_level_2.id}", { :notice => "Feelings level 2 updated successfully."} )
    else
      redirect_to("/feelings_level_2s/#{the_feelings_level_2.id}", { :alert => the_feelings_level_2.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_feelings_level_2 = FeelingsLevel2.where({ :id => the_id }).at(0)

    the_feelings_level_2.destroy

    redirect_to("/feelings_level_2s", { :notice => "Feelings level 2 deleted successfully."} )
  end
end
