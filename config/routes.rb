Wombat::Application.routes.draw do

  resources :assignments

  resources :courses do
    resources :calendar_entries, shallow: true
    resources :assignments, shallow: true
  end

  resources :users do
    resources :assignments, shallow: true
    resources :completed_assignments, shallow: true
    resources :completed_tasks, shallow: true
  end

  resources :completed_assignments
  resources :completed_tasks
  resources :submitted_assignments

  resources :calendar_entries
  resources :courses
  resources :messages

  resources :tasks do
    collection do
      get :adminindex
      get :index, as: :search
    end
  end

  resources :tasks

  get 'tags/:tag', to: 'tasks#index', as: :tag
  get 'users/edit/:id', to: 'users#edit'

  authenticated :user do
    root :to => 'users#dashboard'
  end
  root :to => "home#index"
 
 devise_for :users
 resources :users

end
