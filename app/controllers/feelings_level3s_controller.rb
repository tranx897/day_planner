class FeelingsLevel3sController < ApplicationController
  def index
    matching_feelings_level3s = FeelingsLevel3.all

    @list_of_feelings_level3s = matching_feelings_level3s.order({ :created_at => :desc })

    render({ :template => "feelings_level3s/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_feelings_level3s = FeelingsLevel3.where({ :id => the_id })

    @the_feelings_level3 = matching_feelings_level3s.at(0)

    render({ :template => "feelings_level3s/show" })
  end

  def create
    the_feelings_level3 = FeelingsLevel3.new
    the_feelings_level3.name = params.fetch("query_name")
    the_feelings_level3.description = params.fetch("query_description")
    the_feelings_level3.feeling_level2_id = params.fetch("query_feeling_level2_id")

    if the_feelings_level3.valid?
      the_feelings_level3.save
      redirect_to("/feelings_level3s", { :notice => "Feelings level3 created successfully." })
    else
      redirect_to("/feelings_level3s", { :alert => the_feelings_level3.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_feelings_level3 = FeelingsLevel3.where({ :id => the_id }).at(0)

    the_feelings_level3.name = params.fetch("query_name")
    the_feelings_level3.description = params.fetch("query_description")
    the_feelings_level3.feeling_level2_id = params.fetch("query_feeling_level2_id")

    if the_feelings_level3.valid?
      the_feelings_level3.save
      redirect_to("/feelings_level3s/#{the_feelings_level3.id}", { :notice => "Feelings level3 updated successfully."} )
    else
      redirect_to("/feelings_level3s/#{the_feelings_level3.id}", { :alert => the_feelings_level3.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_feelings_level3 = FeelingsLevel3.where({ :id => the_id }).at(0)

    the_feelings_level3.destroy

    redirect_to("/feelings_level3s", { :notice => "Feelings level3 deleted successfully."} )
  end
end
