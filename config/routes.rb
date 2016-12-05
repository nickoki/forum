Rails.application.routes.draw do

  root to: "posts#index"

  devise_for :users

  resources :posts do
    member do
      put "upvote",      to: "posts#upvote"
      put "downvote",    to: "posts#downvote"
      put "remove_vote", to: "posts#remove_vote"
    end
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
