MyTodosApp::Application.routes.draw do
  resources :todo_lists do
    resources :todo_items do
      member do
        match :complete
      end
    end
  end
  root :to => 'todo_lists#index'
end
