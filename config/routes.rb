Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker

  # Defines the root path route ("/")
  # root "posts#index"
  root "topics#index"
  get "topics/new", to: "topics#new", as: :new_topic
  post "topics/create", to: "topics#create", as: :create_topic
  get "topics/:id", to: "topics#show", as: :topic
  post "topics/:topic_id/answers", to: "answers#create", as: :topic_answers
  post "answers/:answer_id/likes/:level", to: "likes#create", as: :answer_likes
end
