class UtilitiesController < ApplicationController
  before_action :set_utility, only: [:show, :edit, :update, :destroy]
  protect_from_forgery with: :null_session
  require './lib/generate_pdf'

  def index
  end

  def whatsapp
  end

  def mercagopago
  end

  def amorexigente_certificado
    cpf = params[:cpf]

    subscriber = nil
    subscriber = AmorExigenteSubscriber.find_by(cpf: cpf.gsub(/\D+/, '')) if cpf.present?

    if subscriber.present?
      GeneratePdf::certificado(subscriber,cpf)
      url_resposta = "#{root_url}#{cpf.gsub(/\D+/, '')}.pdf"
      respond_to do |format|
        format.html
        format.json { render json: {url: url_resposta}.to_json }
      end
    else
      respond_to do |format|
        format.html
        format.json { render json: {error: 'Inscrito não encontrado'}.to_json, status: :not_found }
      end
    end
  end
end
