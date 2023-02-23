Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # See all tasks
  get 'tasks', to: 'tasks#index'

  # Add/create a new task
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # See one specific task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # Edit a specific task
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # Destroy/remove a task
  delete 'tasks/:id', to: 'tasks#destroy'
end
