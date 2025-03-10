class ApplicationController < ActionController::Base
  include Authentication
  allow_unauthenticated_access
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern unless ENV.fetch("RAILS_ENV", "development") == "development"
end
