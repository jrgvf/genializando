class BasicMailer < ApplicationMailer
  default to: ["rdur@cin.ufpe.br", "jrgvf@cin.ufpe.br", "jco2@cin.ufpe.br"]

  def contact_email(params)
    @params = params
    mail(subject: "[GENIALIZANDO] Contato recebido - #{params[:name]}")
  end
end
