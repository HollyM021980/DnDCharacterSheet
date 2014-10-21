module ApplicationHelper

  def character_editable?(char)
    return ((user_signed_in?) && (current_user.id == char.user_id))
  end

end
