Rails.application.routes.draw do
  namespace :api, defaults: { format: 'json' } do
    namespace :v0 do
      resources :login, only: %i[create destroy]
      resources :tournaments do
        member do
          resources :teams do
            member do
              resources :players do
                member do
                  resources :assessments do
                    member do
                      resources :notes
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  devise_for :users
end
