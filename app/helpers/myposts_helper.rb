module MypostsHelper
def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_myposts_path
    elsif action_name == 'edit'
      mypost_path
    end
  end
end
