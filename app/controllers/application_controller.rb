class ApplicationController < ActionController::Base
  respond_to :html, :json, :js
  protect_from_forgery
end
