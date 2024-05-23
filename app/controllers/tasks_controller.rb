class TasksController < ApplicationController
  def index
    matching_tasks = Task.all

    @list_of_tasks = matching_tasks.order({ :created_at => :desc })

    render({ :template => "tasks/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_tasks = Task.where({ :id => the_id })

    @the_task = matching_tasks.at(0)

    render({ :template => "tasks/show" })
  end

  def create
    the_task = Task.new
    the_task.start_time = params.fetch("query_start_time")
    the_task.end_time = params.fetch("query_end_time")
    the_task.status = params.fetch("query_status", false)
    the_task.category_id = params.fetch("query_category_id")

    if the_task.valid?
      the_task.save
      redirect_to("/tasks", { :notice => "Task created successfully." })
    else
      redirect_to("/tasks", { :alert => the_task.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_task = Task.where({ :id => the_id }).at(0)

    the_task.start_time = params.fetch("query_start_time")
    the_task.end_time = params.fetch("query_end_time")
    the_task.status = params.fetch("query_status", false)
    the_task.category_id = params.fetch("query_category_id")

    if the_task.valid?
      the_task.save
      redirect_to("/tasks/#{the_task.id}", { :notice => "Task updated successfully."} )
    else
      redirect_to("/tasks/#{the_task.id}", { :alert => the_task.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_task = Task.where({ :id => the_id }).at(0)

    the_task.destroy

    redirect_to("/tasks", { :notice => "Task deleted successfully."} )
  end
end
