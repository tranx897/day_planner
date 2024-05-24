Rails.application.routes.draw do
  
  # Routes for the Feelings level3 resource:

  # CREATE
  post("/insert_feelings_level3", { :controller => "feelings_level3s", :action => "create" })
          
  # READ
  get("/feelings_level3s", { :controller => "feelings_level3s", :action => "index" })
  
  get("/feelings_level3s/:path_id", { :controller => "feelings_level3s", :action => "show" })
  
  # UPDATE
  
  post("/modify_feelings_level3/:path_id", { :controller => "feelings_level3s", :action => "update" })
  
  # DELETE
  get("/delete_feelings_level3/:path_id", { :controller => "feelings_level3s", :action => "destroy" })

  #------------------------------

  # Routes for the Feelings level2 resource:

  # CREATE
  post("/insert_feelings_level2", { :controller => "feelings_level2s", :action => "create" })
          
  # READ
  get("/feelings_level2s", { :controller => "feelings_level2s", :action => "index" })
  
  get("/feelings_level2s/:path_id", { :controller => "feelings_level2s", :action => "show" })
  
  # UPDATE
  
  post("/modify_feelings_level2/:path_id", { :controller => "feelings_level2s", :action => "update" })
  
  # DELETE
  get("/delete_feelings_level2/:path_id", { :controller => "feelings_level2s", :action => "destroy" })

  #------------------------------

  # Routes for the Feelings level1 resource:

  # CREATE
  post("/insert_feelings_level1", { :controller => "feelings_level1s", :action => "create" })
          
  # READ
  get("/feelings_level1s", { :controller => "feelings_level1s", :action => "index" })
  
  get("/feelings_level1s/:path_id", { :controller => "feelings_level1s", :action => "show" })
  
  # UPDATE
  
  post("/modify_feelings_level1/:path_id", { :controller => "feelings_level1s", :action => "update" })
  
  # DELETE
  get("/delete_feelings_level1/:path_id", { :controller => "feelings_level1s", :action => "destroy" })

  #------------------------------

  root to: "days#show"
  # Routes for the Journal entries feeling resource:

  # CREATE
  post("/insert_journal_entries_feeling", { :controller => "journal_entries_feelings", :action => "create" })
          
  # READ
  get("/journal_entries_feelings", { :controller => "journal_entries_feelings", :action => "index" })
  
  get("/journal_entries_feelings/:path_id", { :controller => "journal_entries_feelings", :action => "show" })
  
  # UPDATE
  
  post("/modify_journal_entries_feeling/:path_id", { :controller => "journal_entries_feelings", :action => "update" })
  
  # DELETE
  get("/delete_journal_entries_feeling/:path_id", { :controller => "journal_entries_feelings", :action => "destroy" })

  #------------------------------

  # Routes for the Feelings level 3 resource:

  # CREATE
  post("/insert_feelings_level_3", { :controller => "feelings_level_3s", :action => "create" })
          
  # READ
  get("/feelings_level_3s", { :controller => "feelings_level_3s", :action => "index" })
  
  get("/feelings_level_3s/:path_id", { :controller => "feelings_level_3s", :action => "show" })
  
  # UPDATE
  
  post("/modify_feelings_level_3/:path_id", { :controller => "feelings_level_3s", :action => "update" })
  
  # DELETE
  get("/delete_feelings_level_3/:path_id", { :controller => "feelings_level_3s", :action => "destroy" })

  #------------------------------

  # Routes for the Feelings level 2 resource:

  # CREATE
  post("/insert_feelings_level_2", { :controller => "feelings_level_2s", :action => "create" })
          
  # READ
  get("/feelings_level_2s", { :controller => "feelings_level_2s", :action => "index" })
  
  get("/feelings_level_2s/:path_id", { :controller => "feelings_level_2s", :action => "show" })
  
  # UPDATE
  
  post("/modify_feelings_level_2/:path_id", { :controller => "feelings_level_2s", :action => "update" })
  
  # DELETE
  get("/delete_feelings_level_2/:path_id", { :controller => "feelings_level_2s", :action => "destroy" })

  #------------------------------

  # Routes for the Feelings level 1 resource:

  # CREATE
  post("/insert_feelings_level_1", { :controller => "feelings_level_1s", :action => "create" })
          
  # READ
  get("/feelings_level_1s", { :controller => "feelings_level_1s", :action => "index" })
  
  get("/feelings_level_1s/:path_id", { :controller => "feelings_level_1s", :action => "show" })
  
  # UPDATE
  
  post("/modify_feelings_level_1/:path_id", { :controller => "feelings_level_1s", :action => "update" })
  
  # DELETE
  get("/delete_feelings_level_1/:path_id", { :controller => "feelings_level_1s", :action => "destroy" })

  #------------------------------

  # Routes for the Journal entry resource:

  # CREATE
  post("/insert_journal_entry", { :controller => "journal_entries", :action => "create" })
          
  # READ
  get("/journal_entries", { :controller => "journal_entries", :action => "index" })
  
  get("/journal_entries/:path_id", { :controller => "journal_entries", :action => "show" })
  
  # UPDATE
  
  post("/modify_journal_entry/:path_id", { :controller => "journal_entries", :action => "update" })
  
  # DELETE
  get("/delete_journal_entry/:path_id", { :controller => "journal_entries", :action => "destroy" })

  #------------------------------

  # Routes for the Goal resource:

  # CREATE
  post("/insert_goal", { :controller => "goals", :action => "create" })
          
  # READ
  get("/goals", { :controller => "goals", :action => "index" })
  
  get("/goals/:path_id", { :controller => "goals", :action => "show" })
  
  # UPDATE
  
  post("/modify_goal/:path_id", { :controller => "goals", :action => "update" })
  
  # DELETE
  get("/delete_goal/:path_id", { :controller => "goals", :action => "destroy" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  post("/insert_category", { :controller => "categories", :action => "create" })
          
  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  
  get("/categories/:path_id", { :controller => "categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_category/:path_id", { :controller => "categories", :action => "update" })
  
  # DELETE
  get("/delete_category/:path_id", { :controller => "categories", :action => "destroy" })

  #------------------------------

  # Routes for the Task resource:

  # CREATE
  post("/insert_task", { :controller => "tasks", :action => "create" })
          
  # READ
  get("/tasks", { :controller => "tasks", :action => "index" })
  
  get("/tasks/:path_id", { :controller => "tasks", :action => "show" })
  
  # UPDATE
  
  post("/modify_task/:path_id", { :controller => "tasks", :action => "update" })
  
  # DELETE
  get("/delete_task/:path_id", { :controller => "tasks", :action => "destroy" })

  #------------------------------

  devise_for :users

  # This is a blank app! Pick your first screen, build out the RCAV, and go from there. E.g.:

  # get "/your_first_screen" => "pages#first"
  
end
