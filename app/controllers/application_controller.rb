# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  layout 'application'
  before_filter :authenticate

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password

protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "zaznova" && password == "vawd"
    end
  end
end

