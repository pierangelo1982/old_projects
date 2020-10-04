class OrderMailer < ActionMailer::Base

  default from: "amministrazione@glrarredamenti.com"

  def order_email(order)
    @order = order
    @url  = 'http://example.com/login'
    mail(to: 'pierangelo1982@gmail.com, luca@glrarredamenti.com', subject: 'Richiesta Preventivo Noleggio Servizi') do |format|
      format.html { render layout: 'mail_layout' }
  end
  end

end
