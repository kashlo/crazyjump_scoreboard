class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :authenticate

  def authenticate
    authenticate_or_request_with_http_basic('Administration') do |username, password|
      # md5_of_password = Digest::MD5.hexdigest(password)
      # username == 'admin' && md5_of_password == 'fb848fc4d53a5124c2f7db3eb0473627'
      username == 'admin' && password == 'password'
    end
  end
end
