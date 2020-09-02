class ApplicationController < ActionController::Base
  before_action :defect_mobile_variant

  private

  def defect_mobile_variant
    request.variant = :mobile if request.user_agent =~ /iphone/
  end
end
