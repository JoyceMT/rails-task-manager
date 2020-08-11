Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    get 'index', to: 'tasks#index', as: :tasks
    post "index", to: "tasks#create"
    get 'tasks/new', to: 'tasks#new' # The `new` route needs to be *before* `show` route.
    get 'index/:id/edit', to: 'tasks#edit', as: :edit_task
    patch "tasks/:id", to: "tasks#update"
    get 'tasks/:id', to: 'tasks#show', as: :task
    delete 'tasks/:id', to: "tasks#destroy"
end
