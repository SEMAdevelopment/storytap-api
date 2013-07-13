class AuthenticateController < ApplicationController
  skip_before_filter :authenticate_user!, :only => [:index]
  skip_before_action :verify_authenticity_token
  def index
    @user = User.authenticate(params[:username], params[:password])
    unless @user.nil?
      if @user.authentication_token.nil?
        @user.reset_authentication_token!
      end
      render :text => @user.authentication_token
    else
      render :text => "Failed token", :status => 403
    end
  end
end
