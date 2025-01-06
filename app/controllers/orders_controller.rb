class OrdersController < ApplicationController

  def index
    if params[:show_discarded] == "1"
      @orders = Order.all # Show both kept and discarded orders
    else
      @orders = Order.kept # Show only kept orders
    end
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


  def destroy
    @order = Order.find(params[:id])

    if @order.destroy
      redirect_to orders_path(show_discarded: 1), notice: "Objednávka byla trvale smazána."
    else
      redirect_to orders_path(show_discarded: 1), alert: "Nepodařilo se smazat objednávku."
    end
  end

  def discard
    @order = Order.find(params[:id])

    if @order.discard
      redirect_to orders_path, notice: "Order ##{@order.id} was successfully completed."
    else
      redirect_to orders_path, alert: "Failed to complete the order."
    end
  end

  def change_to_sent
    @order = Order.find(params[:id])

    if @order.change_to_sent!
      redirect_to orders_path, notice: "Order ##{@order.id} was successfully marked as sent."
    else
      redirect_to orders_path, alert: "Failed to update order ##{@order.id}."
    end
  end

  def change_to_delivered
    @order = Order.find(params[:id])

    if @order.change_to_delivered!
      redirect_to orders_path, notice: "Order ##{@order.id} was successfully marked as delivered."
    else
      redirect_to orders_path, alert: "Failed to update order ##{@order.id}."
    end
  end

  private

  def order_params
    params.permit(:name, :address, :quantity, :produkt_id, :discarded_at,:phone_number, :email, :instagram)
  end
end
