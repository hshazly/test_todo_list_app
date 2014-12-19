class TodoList < ActiveRecord::Base
  has_many :todo_items
  attr_accessible :description, :title
end
