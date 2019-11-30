ActiveAdmin.register Customer do
  remove_filter :personal_photo_attachment
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
    permit_params :first_name, :last_name, :address, :postal_code, :email, :phone, :card_number, :password, :Province_id, :personal_photo
    
    form do |f|
      f.semantic_errors 
      f.inputs 
      f.inputs do 
        f.input :personal_photo, as: :file
      end
      f.actions
    end

  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :address, :postal_code, :email, :phone, :card_number, :password, :Province_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
