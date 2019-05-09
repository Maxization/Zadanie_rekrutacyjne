class CartsController < ApplicationController
  def show
    @cart = Cart.all.first
    render json: @cart
  end
end
