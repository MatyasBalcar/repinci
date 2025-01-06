class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def create
    produkt = Produkt.find(params[:produkt_id]) # Fetch the associated product

    if params[:quantity].to_i > produkt.pocet
      redirect_back fallback_location: produkts_path, alert: "Požadované množství není skladem."
      return
    end

    @order = Order.new(order_params.merge(produkt_id: produkt.id))

    if @order.save
      produkt.update(pocet: produkt.pocet - @order.quantity)
      redirect_to produkts_path, notice: "Objednávka byla úspěšně odeslána!"
    else
      redirect_back fallback_location: produkts_path, alert: "Chyba při odesílání objednávky."
    end
  end

  private

  def order_params
    params.permit(:name, :address, :quantity, :produkt_id)
  end
end
