class ChargesController < ApplicationController

  def new
  end

  def create
    # Amount in cents
    # @amount = 500

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => (@cart.total_price * 100).to_int,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
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
