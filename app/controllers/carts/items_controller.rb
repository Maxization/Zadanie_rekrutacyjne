module Carts
class ItemsController < ApplicationController
  before_action :create_cart

  def create
    if params[:quantity] == '0'
      cart.items.find_by(product_id: params[:product_id]).destroy
    else
      cart.items.create!(item_params)
    end
    render json: cart
  end

  def update
    item.update!(item_update_params)

    render json: cart, status: 201
  end

  private

  def create_cart
    if Cart.all.empty?
      Cart.create
    end
  end

  def item_params
    params.permit(:product_id,:quantity)
  end

  def item_update_params
    params.permit(:quantity)
  end

  def item
    @item ||= Item.find_by!(id: params[:id])
  end

  def cart
    @cart ||= Cart.all.first
  end

end
end
