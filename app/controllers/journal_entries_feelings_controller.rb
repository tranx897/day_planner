class JournalEntriesFeelingsController < ApplicationController
  def index
    matching_journal_entries_feelings = JournalEntriesFeeling.all

    @list_of_journal_entries_feelings = matching_journal_entries_feelings.order({ :created_at => :desc })

    render({ :template => "journal_entries_feelings/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_journal_entries_feelings = JournalEntriesFeeling.where({ :id => the_id })

    @the_journal_entries_feeling = matching_journal_entries_feelings.at(0)

    render({ :template => "journal_entries_feelings/show" })
  end

  def create
    the_journal_entries_feeling = JournalEntriesFeeling.new
    the_journal_entries_feeling.journal_entry_id = params.fetch("query_journal_entry_id")
    the_journal_entries_feeling.feelings_level_1s_count = params.fetch("query_feelings_level_1s_count")

    if the_journal_entries_feeling.valid?
      the_journal_entries_feeling.save
      redirect_to("/journal_entries_feelings", { :notice => "Journal entries feeling created successfully." })
    else
      redirect_to("/journal_entries_feelings", { :alert => the_journal_entries_feeling.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_journal_entries_feeling = JournalEntriesFeeling.where({ :id => the_id }).at(0)

    the_journal_entries_feeling.journal_entry_id = params.fetch("query_journal_entry_id")
    the_journal_entries_feeling.feelings_level_1s_count = params.fetch("query_feelings_level_1s_count")

    if the_journal_entries_feeling.valid?
      the_journal_entries_feeling.save
      redirect_to("/journal_entries_feelings/#{the_journal_entries_feeling.id}", { :notice => "Journal entries feeling updated successfully."} )
    else
      redirect_to("/journal_entries_feelings/#{the_journal_entries_feeling.id}", { :alert => the_journal_entries_feeling.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_journal_entries_feeling = JournalEntriesFeeling.where({ :id => the_id }).at(0)

    the_journal_entries_feeling.destroy

    redirect_to("/journal_entries_feelings", { :notice => "Journal entries feeling deleted successfully."} )
  end
end
