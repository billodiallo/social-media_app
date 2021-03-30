module ApplicationHelper
  def user_sessions
    if user_signed_in?

      content_tag(:div, class: 'd-flex special') do
        (button_to 'Sign Out', destroy_user_session_path, method: :delete, class: 'btn_all bg-primary') +
          (link_to 'New Post', new_post_path, method: :delete, class: 'btn_all text-light btn_special1')
          #(link_to 'Profile', users_index_path, class: 'btn_all text-light btn_special1')
      end

    else

      (button_to 'Sign In', new_user_session_path, class: 'btn_all bg-primary') +
        (link_to 'Sign Up', new_user_registration_path, class: 'btn_special1 text-light btn_all')

    end
  end
end
