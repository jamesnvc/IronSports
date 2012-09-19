ActiveAdmin.register Post do
  filter :title
  config.sort_order = "published_desc"

  sidebar :controls do
    link_to "New Post", new_admin_post_path
  end

  index do
    column :title, sortable: :title do |post|
      auto_link(post)
    end
    column :body do |post|
      post.content.slice(0, 200) + (post.content.length > 200 ? '...' : '')
    end
    column :published do |post|
      post.published
    end
  end

  show do
    panel "Post Details" do
      attributes_table_for post do
        row :title
        row :content
        row :published
        row(:controls) do
          ul do
            li link_to("Edit", edit_admin_post_path(post))
            li link_to("Delete", admin_post_path(post), confirm: 'Delete Post?', method: :delete)
          end
        end
      end
    end
  end

end
