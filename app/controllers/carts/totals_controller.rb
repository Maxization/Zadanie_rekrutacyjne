module Carts
  class TotalsController < ApplicationController
    before_action :create_cart

    def show
      render json: cart
    end

    private

    def create_cart
      if Cart.all.empty?
        Cart.create
      end
    end

    def cart
      @cart ||= Cart.all.first
    end

  end
end
