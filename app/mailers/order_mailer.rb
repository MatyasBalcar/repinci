class OrderMailer < ApplicationMailer
  default from: 'no-reply@example.com' # Replace with your email address

  def order_sent_email(order)
    @order = order
    @produkt = order.produkt

    mail(to: @order.email, subject: "Your Order ##{@order.id} Has Been Sent")
  end
end
