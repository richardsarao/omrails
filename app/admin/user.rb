#app/admin/user.rb
ActiveAdmin.register User do

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
 
 #permits admin users to change only email and admin status  
	permit_params :email, :admin, :name, :username

#customizes index form to show email, admin, name & username cols.
	form do |f|   
		f.semantic_errors
		f.inputs do
			f.input :email #vid 56 8:56
			f.input :admin
			f.input :name
			f.input :username
		end
		f.actions
	end

	index do
		id_column
		column :name  #vid56
		column :username
		column :email
		column :admin
		actions
	end

end
