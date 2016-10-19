Rails.application.routes.draw do
  root :to => "sprints#index"
  resource :sprints
  put '/sprints/complete_action/:id', to: 'sprints#complete_action', as: 'complete_action'
end
