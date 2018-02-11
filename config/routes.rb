Rails.application.routes.draw do
  # Routes for the Data_card resource:
  # CREATE
  get "/data_cards/new", :controller => "data_cards", :action => "new"
  post "/create_data_card", :controller => "data_cards", :action => "create"

  # READ
  get "/data_cards", :controller => "data_cards", :action => "index"
  get "/data_cards/:id", :controller => "data_cards", :action => "show"

  # UPDATE
  get "/data_cards/:id/edit", :controller => "data_cards", :action => "edit"
  post "/update_data_card/:id", :controller => "data_cards", :action => "update"

  # DELETE
  get "/delete_data_card/:id", :controller => "data_cards", :action => "destroy"
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
