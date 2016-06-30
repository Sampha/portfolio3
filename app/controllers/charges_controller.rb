class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    # @amount = 500
    @total_price = @cart.total_price * 100

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @total_price.to_int,
      :description => 'Rails Stripe customer',
      :currency    => 'aud'
    )

    if charge[:paid] == true
      # empty cart
      @cart.delete
      redirect_to root_path, notice: 'Thanks'
    end

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to root_path
  end

end
