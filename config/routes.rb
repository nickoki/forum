Rails.application.routes.draw do

  root to: "links#index"

  devise_for :users

  resources :links do
    member do
      put "upvote",    to: "links#upvote"
      put "downvote", do: "links#downvote"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
