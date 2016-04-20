Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get "/questions", to: "questions#index"
    end
  end

  root to: "home#index"
end
