# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: %i[create edit]

  def new
    @user = User.new
  end

  def table
    @users = User.all
  end

  def update
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    super
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name cpf state cep street number kind phone])
  end
end
