module Carts
  class DiscountsController < ApplicationController
    before_action :create_cart
    
    def create
      cart.discounts.create!(discount_params)

      render json: cart
    end

    private

    def create_cart
      if Cart.all.empty?
        Cart.create
      end
    end

    def discount_params
      params.permit(:kind,:name,:product_ids,:price)
    end

    def cart
      @cart ||= Cart.all.first
    end

  end
end
