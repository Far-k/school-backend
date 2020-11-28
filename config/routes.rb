Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
resources :instructors
resources :students
resources :contents


resources  :courses
resources :subjects
resources :student_courses

    end
  end
end
