module Carts
  class DiscountsController < ApplicationController
    before_action :create_cart

    def create
      cart.discounts.create!(discount_params)

      render json: cart, status: 201
    end

    def update
      discount.update!(discount_params)

      render json: cart, status: 201
    end

    private

    def create_cart
      if Cart.all.empty?
        Cart.create
      end
    end

    def discount_params
      params.permit(:kind,:name,:price,:count,product_ids: [])
    end

    def cart
      @cart ||= Cart.all.first
    end

    def discount
      @discount ||= Discount.find_by!(id: params[:id])
    end

  end
end
