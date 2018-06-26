class UtilitiesController < ApplicationController
  before_action :set_utility, only: [:show, :edit, :update, :destroy]

  def index
  end

  def whatsapp
    @phone = params[:phone]
  end
end
