Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      post '/login', to: 'auth#create'
resources :instructors
resources :students
resources :contents


resources  :courses
resources :subjects
resources :student_courses

    end
  end
end
