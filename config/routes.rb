Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :students
  get "/students/:id/activate", to: "students#activate", as: "activate"
  patch "/students/:id", to: "students#activate_student", as: "activate_student"
end
