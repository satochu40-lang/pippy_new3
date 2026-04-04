Rails.application.routes.draw do
  devise_for :users
  # 1. お城の玄関（トップページ）
  root 'top#index'

  # 2. ログイン機能の道（これをこの後追加するにゃ！）
  # devise_for :users

  # 3. Pippyについて知るページ
  get 'about', to: 'about#index'

  # 4. hanahanaさんのマイページ（showだけでOKだにゃ！）
  resources :users, only: [:show]
end