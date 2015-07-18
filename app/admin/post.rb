ActiveAdmin.register Post do
permit_params :title, :description, :image
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
#permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
#end


#permit_params :title, :description

form do |f|
  f.inputs do
    f.input :title
    f.input :description, :as => :ckeditor
  end
f.actions
end






end
