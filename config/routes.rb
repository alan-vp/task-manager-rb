Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # index
  get 'tasks', to: 'tasks#index', as: :tasks
  # new - get
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # create - post
  post 'tasks', to: 'tasks#create'
  # show - get
  get 'tasks/:id', to: 'tasks#show', as: :task
  # edit - get
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # update - patch
  patch 'tasks/:id', to: 'tasks#update'
  # destroy - delete
  delete 'tasks/id', to: 'tasks#destroy'
end
