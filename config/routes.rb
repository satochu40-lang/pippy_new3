Rails.application.routes.draw do
  # get 'letters/new'   <-- resources を使うなら、この3行は消してもOKだにゃ！
  # get 'letters/index'
  # get 'letters/show'

  devise_for :users
  root 'top#index'

  get 'about', to: 'about#index'

  # 🌟 ここを修正にゃ！only: [:index, :new, :create, :edit, :update, :destroy] にするにゃ
  resources :letters, only: [:index, :new, :create, :edit, :update, :destroy]

  # 🌟 マイページ用の道も忘れずに足しておくんだにゃ！
  resources :users, only: :show
end