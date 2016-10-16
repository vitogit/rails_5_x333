Rails.application.routes.draw do
  root :to => "sprints#index"
  get 'sprints', to: 'sprints#index'
  post 'sprints', to: 'sprints#save'  
end
