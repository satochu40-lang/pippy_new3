Rails.application.routes.draw do
  get 'letters/new'
  get 'letters/index'
  get 'letters/show'
  devise_for :users
  # 1. お城の玄関（トップページ）
  root 'top#index'

  # 2. ログイン機能の道（これをこの後追加するにゃ！）
  # devise_for :users

  # 3. Pippyについて知るページ
  get 'about', to: 'about#index'

  # 4. ★ここを書き換えるにゃ！お手紙の「正式な道」だにゃ🚀
  resources :letters, only: [:index, :new, :create, :show]
end