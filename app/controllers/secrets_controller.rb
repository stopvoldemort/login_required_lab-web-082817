class SecretsController < ApplicationController

  def show
    redirect_to login_path if !session.include? :name
  end

end
