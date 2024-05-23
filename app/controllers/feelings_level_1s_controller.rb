class FeelingsLevel1sController < ApplicationController
  def index
    matching_feelings_level_1s = FeelingsLevel1.all

    @list_of_feelings_level_1s = matching_feelings_level_1s.order({ :created_at => :desc })

    render({ :template => "feelings_level_1s/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_feelings_level_1s = FeelingsLevel1.where({ :id => the_id })

    @the_feelings_level_1 = matching_feelings_level_1s.at(0)

    render({ :template => "feelings_level_1s/show" })
  end

  def create
    the_feelings_level_1 = FeelingsLevel1.new
    the_feelings_level_1.name = params.fetch("query_name")
    the_feelings_level_1.description = params.fetch("query_description")
    the_feelings_level_1.journal_entry_feelings_id = params.fetch("query_journal_entry_feelings_id")
    the_feelings_level_1.feelings_level_2s_count = params.fetch("query_feelings_level_2s_count")

    if the_feelings_level_1.valid?
      the_feelings_level_1.save
      redirect_to("/feelings_level_1s", { :notice => "Feelings level 1 created successfully." })
    else
      redirect_to("/feelings_level_1s", { :alert => the_feelings_level_1.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_feelings_level_1 = FeelingsLevel1.where({ :id => the_id }).at(0)

    the_feelings_level_1.name = params.fetch("query_name")
    the_feelings_level_1.description = params.fetch("query_description")
    the_feelings_level_1.journal_entry_feelings_id = params.fetch("query_journal_entry_feelings_id")
    the_feelings_level_1.feelings_level_2s_count = params.fetch("query_feelings_level_2s_count")

    if the_feelings_level_1.valid?
      the_feelings_level_1.save
      redirect_to("/feelings_level_1s/#{the_feelings_level_1.id}", { :notice => "Feelings level 1 updated successfully."} )
    else
      redirect_to("/feelings_level_1s/#{the_feelings_level_1.id}", { :alert => the_feelings_level_1.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_feelings_level_1 = FeelingsLevel1.where({ :id => the_id }).at(0)

    the_feelings_level_1.destroy

    redirect_to("/feelings_level_1s", { :notice => "Feelings level 1 deleted successfully."} )
  end
end
