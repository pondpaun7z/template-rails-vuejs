Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  root "homes#index"

  resources :homes, only: %i[index]

  devise_for :super_admins, path: "admin", controllers: {
    sessions: "super_admins/sessions"
  }
  namespace :admin do
    resources :overviews, only: %i[index]

    root to: "overviews#index"
  end
end
