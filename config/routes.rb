Todo::Application.routes.draw do

  scope :module => :web do

    resources :users, :only => [:new, :create]

    resources :sessions, :only => [:new, :create] do
      delete :destroy, :on => :collection
    end

    resources :stories do
      post :filter, :to => 'stories#index', :on => :collection
      scope :module => :stories do
        resources :comments
      end
    end

  end

  root :to => 'web/stories#index'

end
