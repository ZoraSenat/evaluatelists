Rails.application.routes.draw do
  # Routes for the Select resource:
  # CREATE
  get "/selects/new", :controller => "selects", :action => "new"
  post "/create_select", :controller => "selects", :action => "create"

  # READ
  get "/selects", :controller => "selects", :action => "index"
  get "/selects/:id", :controller => "selects", :action => "show"

  # UPDATE
  get "/selects/:id/edit", :controller => "selects", :action => "edit"
  post "/update_select/:id", :controller => "selects", :action => "update"

  # DELETE
  get "/delete_select/:id", :controller => "selects", :action => "destroy"
  #------------------------------

  # Routes for the File_layout resource:
  # CREATE
  get "/file_layouts/new", :controller => "file_layouts", :action => "new"
  post "/create_file_layout", :controller => "file_layouts", :action => "create"

  # READ
  get "/file_layouts", :controller => "file_layouts", :action => "index"
  get "/file_layouts/:id", :controller => "file_layouts", :action => "show"

  # UPDATE
  get "/file_layouts/:id/edit", :controller => "file_layouts", :action => "edit"
  post "/update_file_layout/:id", :controller => "file_layouts", :action => "update"

  # DELETE
  get "/delete_file_layout/:id", :controller => "file_layouts", :action => "destroy"
  #------------------------------

  # Routes for the Channel_association resource:
  # CREATE
  get "/channel_associations/new", :controller => "channel_associations", :action => "new"
  post "/create_channel_association", :controller => "channel_associations", :action => "create"

  # READ
  get "/channel_associations", :controller => "channel_associations", :action => "index"
  get "/channel_associations/:id", :controller => "channel_associations", :action => "show"

  # UPDATE
  get "/channel_associations/:id/edit", :controller => "channel_associations", :action => "edit"
  post "/update_channel_association/:id", :controller => "channel_associations", :action => "update"

  # DELETE
  get "/delete_channel_association/:id", :controller => "channel_associations", :action => "destroy"
  #------------------------------

  # Routes for the Channel resource:
  # CREATE
  get "/channels/new", :controller => "channels", :action => "new"
  post "/create_channel", :controller => "channels", :action => "create"

  # READ
  get "/channels", :controller => "channels", :action => "index"
  get "/channels/:id", :controller => "channels", :action => "show"

  # UPDATE
  get "/channels/:id/edit", :controller => "channels", :action => "edit"
  post "/update_channel/:id", :controller => "channels", :action => "update"

  # DELETE
  get "/delete_channel/:id", :controller => "channels", :action => "destroy"
  #------------------------------

  # Routes for the Comment resource:
  # CREATE
  get "/comments/new", :controller => "comments", :action => "new"
  post "/create_comment", :controller => "comments", :action => "create"

  # READ
  get "/comments", :controller => "comments", :action => "index"
  get "/comments/:id", :controller => "comments", :action => "show"

  # UPDATE
  get "/comments/:id/edit", :controller => "comments", :action => "edit"
  post "/update_comment/:id", :controller => "comments", :action => "update"

  # DELETE
  get "/delete_comment/:id", :controller => "comments", :action => "destroy"
  #------------------------------

  # Routes for the Tagging resource:
  # CREATE
  get "/taggings/new", :controller => "taggings", :action => "new"
  post "/create_tagging", :controller => "taggings", :action => "create"

  # READ
  get "/taggings", :controller => "taggings", :action => "index"
  get "/taggings/:id", :controller => "taggings", :action => "show"

  # UPDATE
  get "/taggings/:id/edit", :controller => "taggings", :action => "edit"
  post "/update_tagging/:id", :controller => "taggings", :action => "update"

  # DELETE
  get "/delete_tagging/:id", :controller => "taggings", :action => "destroy"
  #------------------------------

  # Routes for the Tag resource:
  # CREATE
  get "/tags/new", :controller => "tags", :action => "new"
  post "/create_tag", :controller => "tags", :action => "create"

  # READ
  get "/tags", :controller => "tags", :action => "index"
  get "/tags/:id", :controller => "tags", :action => "show"

  # UPDATE
  get "/tags/:id/edit", :controller => "tags", :action => "edit"
  post "/update_tag/:id", :controller => "tags", :action => "update"

  # DELETE
  get "/delete_tag/:id", :controller => "tags", :action => "destroy"
  #------------------------------

  devise_for :users
  # Routes for the User resource:
  # READ
  get "/users", :controller => "users", :action => "index"
  get "/users/:id", :controller => "users", :action => "show"


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
