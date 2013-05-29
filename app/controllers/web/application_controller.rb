class Web::ApplicationController < ApplicationController
  include FlashHelper
  protect_from_forgery
end