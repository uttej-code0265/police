Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to:'pages#about'
  resources 'articles'
  resources 'users'
  # get 'disposal/:id',to:'articles#disposal',as: 'disposal'
  # get 'disp_destroy/:id',to:'articles#disp_destroy',as: 'disp_destroy'
end
