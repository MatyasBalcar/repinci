class OrderMailer < ApplicationMailer
  default from: 'no-reply@example.com'

  def order_sent_email(order)
    @order = order
    @produkt = order.produkt

    mail(to: @order.email, subject: "Řepínci odeslali vaší objednávku číslo ##{@order.id}")
  end

  def order_confirmation_email(order)
    @order = order
    mail(to: @order.email, subject: "Potvrzeni vasi objednavky cislo ##{@order.id}")
  end
end
