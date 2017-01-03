module ApplicationHelper

  def current_entry
    @current_entry = Entry.find(980190962)
  end

  def current_entry_id
    current_entry.id
  end

end
