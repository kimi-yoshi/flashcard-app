Rails.application.routes.draw do
  get 'flashcard/top'
  get 'flashcard/play'
  root to: 'top#home'
  post 'top' => 'top#index'
  get 'top' => 'top#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
