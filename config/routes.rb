Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks

  # Read all tasks
  get "tasks", to: "tasks#index"

  # Read one task
  get "tasks/:id", to: "tasks#show"

  # Create a task (2 requests)
  get "tasks/new", to: "tasks#new"
  post "tasks", to: "tasks#create"

  # Update a task (2 requests)
  get "tasks/:id/edit", to: "tasks#edit"
  patch "tasks/:id", to: "tasks#update"

  # Delete a task
  delete "tasks/:id", to: "tasks#destroy"

end
