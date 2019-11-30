ActiveAdmin.register Page do
remove_filter :about_photo_attachment
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :about, :contact, :about_photo

    form do |f|
      f.semantic_errors 
      f.inputs 
      f.inputs do 
        f.input :about_photo, as: :file
      end
      f.actions
    end
  #
  # or
  #
  # permit_params do
  #   permitted = [:content, :heading]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
