module Carts
  class DiscountsController < ApplicationController

    def create
      cart.discounts.create!(discount_params)

      render json: cart
    end

    private

    def discount_params
      params.permit(:kind,:name,:product_ids,:price)
    end

    def cart
      if Cart.present?
        @cart ||= Cart.find(1)
      else
        @cart ||= Cart.create
      end
    end

  end
end
