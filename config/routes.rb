Rails.application.routes.draw do
  root to: 'top#home'
  post 'top' => 'top#index'
  get 'top' => 'top#show'

  get 'flashcard/top'
  get 'flashcard/play'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
