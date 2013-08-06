Wombat::Application.routes.draw do
  resources :objective_results
  resources :assessments
  resources :objectives
  resources :mastery_categories

  mount Ckeditor::Engine => '/ckeditor'

  resources :assignments
  resources :calendar_entries
  resources :courses do
    resources :calendar_entries, shallow: true
    resources :assignments, shallow: true
  end

  devise_for :users
  resources :users

  resources :users do
    resources :assignments, shallow: true
    resources :completed_assignments, shallow: true
    resources :completed_tasks, shallow: true
  end

  get 'users/:id', to: 'users#dashboard'
  get 'users/gradeview/:id', to: 'users#gradeview', :as => :gradeview_user
  get 'tasks/new_assignment', to: 'tasks#new_assignment', :as => :one_time_assignment
  post 'tasks/new_assignment', to: 'tasks#new_assignment_create', :as => :one_time_assignment_create

  resources :completed_assignments
  resources :completed_tasks
  resources :submitted_assignments

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

end
