Rails.application.routes.draw do
 
  namespace 'api' do
    namespace 'v1' do 
      resources :signup
      resources :signin 
      resources :order
      resources :vieworder
    end 
  end 
end