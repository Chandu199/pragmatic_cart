class OrderMailer < ApplicationMailer
  
  default from: 'Sam Ruby <depot@example.com>'
  
  def received(order)
      @order = order
      mail to: order.email, subject: 'Pragmatic Store Order confirmation'
  end

  
  def shipped(order)
    @order = order
    mail to: order.email, subject: 'Pragmatic Store Order-shipped'
  end
end
