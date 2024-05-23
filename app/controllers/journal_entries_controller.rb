class JournalEntriesController < ApplicationController
  def index
    matching_journal_entries = JournalEntry.all

    @list_of_journal_entries = matching_journal_entries.order({ :created_at => :desc })

    render({ :template => "journal_entries/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_journal_entries = JournalEntry.where({ :id => the_id })

    @the_journal_entry = matching_journal_entries.at(0)

    render({ :template => "journal_entries/show" })
  end

  def create
    the_journal_entry = JournalEntry.new
    the_journal_entry.user_id = params.fetch("query_user_id")
    the_journal_entry.date = params.fetch("query_date")
    the_journal_entry.note = params.fetch("query_note")
    the_journal_entry.journal_entries_feelings_count = params.fetch("query_journal_entries_feelings_count")

    if the_journal_entry.valid?
      the_journal_entry.save
      redirect_to("/journal_entries", { :notice => "Journal entry created successfully." })
    else
      redirect_to("/journal_entries", { :alert => the_journal_entry.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_journal_entry = JournalEntry.where({ :id => the_id }).at(0)

    the_journal_entry.user_id = params.fetch("query_user_id")
    the_journal_entry.date = params.fetch("query_date")
    the_journal_entry.note = params.fetch("query_note")
    the_journal_entry.journal_entries_feelings_count = params.fetch("query_journal_entries_feelings_count")

    if the_journal_entry.valid?
      the_journal_entry.save
      redirect_to("/journal_entries/#{the_journal_entry.id}", { :notice => "Journal entry updated successfully."} )
    else
      redirect_to("/journal_entries/#{the_journal_entry.id}", { :alert => the_journal_entry.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_journal_entry = JournalEntry.where({ :id => the_id }).at(0)

    the_journal_entry.destroy

    redirect_to("/journal_entries", { :notice => "Journal entry deleted successfully."} )
  end
end
