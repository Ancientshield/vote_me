Rails.application.routes.draw do
  # get '/', to: 'pages#home'
  # get '/', to: 'candidates/#index'
  root 'candidates#index'
  resources :candidates
  # get '/', to: 'pages#abc' 寫兩個根目錄的時候，找到第一個就停了
end
