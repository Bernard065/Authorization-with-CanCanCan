class ApplicationController < ActionController::Base
    rescue_from CanCan::AccessDenied do |exception|
      flash[:alert] = "Access denied: #{exception.message}"
      redirect_to root_url
    end
end
  