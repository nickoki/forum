Rails.application.routes.draw do

  resources :comments
  root to: "links#index"

  devise_for :users

  resources :links do
    member do
      put "upvote",      to: "links#upvote"
      put "downvote",    to: "links#downvote"
      put "remove_vote", to: "links#remove_vote"
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
