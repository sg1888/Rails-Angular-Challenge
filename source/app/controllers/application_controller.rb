class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_customer!
  alias_method :current_user, :current_customer

  # This method is used to render Angular UI view when user refreshes the HTML page which  has url matched the Rails route.
  def render_default
    respond_to do |format|
      format.html { render 'application/angular_view' }
      format.json { render layout: false }
    end
  end

  def after_sign_in_path_for(resource)
    transactions_path
  end
end
