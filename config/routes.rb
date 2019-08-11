Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
    # "resources" is a helper method in rails that equals all seven Restful routes:
    # "student" references the students_controller.rb file.
    # 1. get "/students, to: "students#index"
    # 2. get "/students/:id", to: "students#show"
    # 3. get "/students/new", to: "students#new"
    # 4. post "/students", to: "students#create"
    # 5. get "/students/:id/edit", to: "posts#edit"
    # 6. put "/students/:id", to: "students#update"
    # 7. delete "/students/:id", to "students#destroy"
    resources :students

    # set up URL with different address.
    get '/students/:id/activate', to: 'students#activate', as: 'activate_student'

end
