class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  attr_accessible :content

  def completed?
    !completed_at.blank?
  end
end
