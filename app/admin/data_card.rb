ActiveAdmin.register DataCard do

 permit_params :title, :file_size, :user_id, :desription, :subtitle, :file_layout_id, :market, :file_type, :image, :sample_download, :source

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
