class TodoItemsController < ApplicationController
 before_filter :set_todo_list 
 #before_filter :set_todo_item, only: [:destory, :complete] 

 def create
   @todo_item = @todo_list.todo_items.create(params[:todo_item])
   redirect_to @todo_list
 end

 def destroy
   @todo_item = @todo_list.todo_items.find(params[:id])
   if @todo_item.destroy
      flash[:success] = "Todo list item was deleted"
   else
      flash[:error] = "Todo list item couldn't be deleted"
   end
   redirect_to @todo_list
 end

 def complete
   @todo_item = @todo_list.todo_items.find(params[:id])
   @todo_item.update_attribute(:completed_at, Time.now)
   redirect_to @todo_list, notice: "Todo item completed"
 end

 private

 def set_todo_list
   @todo_list = TodoList.find(params[:todo_list_id])
 end

 def set_todo_item
   @todo_item = @todo_list.todo_items.find(params[:id])
 end

end
