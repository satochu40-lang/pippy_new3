Rails.application.routes.draw do
  root 'top#index'
  get 'about', to: 'about#index' # ←これを追加にゃ！
end