Rails.application.routes.draw do
  root :to => "sprints#index"
  resource :sprints
end
