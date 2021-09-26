Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  ##authenticate
  #
  post "/signup" => "registration#create", defaults: {format: :json}
  post "/sessions" => "sessions#create", defaults: {format: :json}
  delete "/sessions" => "sessions#destroy", defaults: {format: :json}

  get "/list-of-questions" => "exams#list_of_questions", defaults: {format: :json}
  post "/submit_answer" => "user_results#create", defaults: {format: :json}
  get "/final_result" => "user_results#total_percentage", defaults: {format: :json}
end
