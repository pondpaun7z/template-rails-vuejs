Rails.application.routes.draw do
  devise_for :super_admins, path: "admin", controllers: {
    sessions: "super_admins/sessions"
  }
  namespace :admin do
    resources :overviews, only: %i[index]

    root to: "overviews#index"
  end
end
