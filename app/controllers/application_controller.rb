class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_time_zone, if: :user_signed_in?

  protect_from_forgery with: :exception

  private

    def set_time_zone
      Time.zone = current_user.time_zone
    end
end
