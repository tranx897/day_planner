class CategoriesController < ApplicationController
  def index
    matching_categories = Category.all

    @list_of_categories = matching_categories.order({ :created_at => :desc })

    render({ :template => "categories/index" })
  end

  def show
    the_id = params.fetch("path_id")

    matching_categories = Category.where({ :id => the_id })

    @the_category = matching_categories.at(0)

    render({ :template => "categories/show" })
  end

  def create
    the_category = Category.new
    the_category.name = params.fetch("query_name")
    the_category.color = params.fetch("query_color")
    the_category.user_id = params.fetch("query_user_id")
    the_category.tasks_count = params.fetch("query_tasks_count")
    the_category.goals_count = params.fetch("query_goals_count")

    if the_category.valid?
      the_category.save
      redirect_to("/categories", { :notice => "Category created successfully." })
    else
      redirect_to("/categories", { :alert => the_category.errors.full_messages.to_sentence })
    end
  end

  def update
    the_id = params.fetch("path_id")
    the_category = Category.where({ :id => the_id }).at(0)

    the_category.name = params.fetch("query_name")
    the_category.color = params.fetch("query_color")
    the_category.user_id = params.fetch("query_user_id")
    the_category.tasks_count = params.fetch("query_tasks_count")
    the_category.goals_count = params.fetch("query_goals_count")

    if the_category.valid?
      the_category.save
      redirect_to("/categories/#{the_category.id}", { :notice => "Category updated successfully."} )
    else
      redirect_to("/categories/#{the_category.id}", { :alert => the_category.errors.full_messages.to_sentence })
    end
  end

  def destroy
    the_id = params.fetch("path_id")
    the_category = Category.where({ :id => the_id }).at(0)

    the_category.destroy

    redirect_to("/categories", { :notice => "Category deleted successfully."} )
  end
end
