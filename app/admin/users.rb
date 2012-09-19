ActiveAdmin.register User do
  filter :email
  config.sort_order = "email_asc"

  member_action :make_admin, method: :post do
    user = User.find(params[:id])
    user.is_admin = true
    user.save!
    redirect_to  action: :show , notice: "Made Admin"
  end

  member_action :unmake_admin, method: :post do
    user = User.find(params[:id])
    user.is_admin = false
    user.save!
    redirect_to  action: :show , notice: "Revoked Admin"
  end

  action_item only: :show do
  end

  index do
    column :name do |user|
      auto_link(user)
    end
    column :email, sortable: :email do |user|
      user.email
    end
    column :sex do |user|
      user.sex
    end
    column :is_admin do |user|
      user.admin? ? icon(:check) : icon(:x)
    end
    column :mass, sortable: :bodyweight do |user|
      user.bodyweight
    end
    column :squat, sortable: :squat_max do |user|
      user.squat
    end
    column :bench, sortable: :bench_max do |user|
      user.bench
    end
    column :deadlift, sortable: :deadlift_max do |user|
      user.deadlift
    end
    column :total do |user|
      user.total
    end
    column :wilks_total do |user|
      user.wilks
    end
    column :controls do |user|
      link_to "Edit", edit_admin_user_path(user)
    end
  end

  show do
    panel "User Details" do
      attributes_table_for user do
        row :email
        row :name
        row :squat_max
        row :bench_max
        row :deadlift_max
        row :total
        row :wilks
        row :age
        row :sex
        row :admin?
        row :registration_number
      end
    end
    panel "Controls" do
      ul do
        li link_to "Edit", edit_admin_user_path(user)
        li link_to("Delete", admin_user_path(user), confirm: 'Delete User?', method: :delete)
        if user.admin?
          li link_to 'Revoke Admin', unmake_admin_admin_user_path(user), method: :post
        else
          li link_to 'Make Admin', make_admin_admin_user_path(user), method: :post
        end
      end
    end
  end

  form do |f|
    f.inputs 'Basic Info' do
      f.input :email
      f.input :first_name
      f.input :last_name
      f.input :studying
      f.input :graduating
      f.input :birthdate
    end
    f.inputs 'Administrative' do
      f.input :registration_number
    end
    f.inputs 'Lifting Info' do
      f.input :bodyweight
      f.input :gender
      f.input :weight_class
      f.input :squat_max
      f.input :bench_max
      f.input :deadlift_max
    end
    f.buttons
  end

end
