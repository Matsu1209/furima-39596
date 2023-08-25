class ItemsController < ApplicationController

  #「ログアウト状態のユーザーが商品出品ページへ遷移しようとすると、ログインページへリダイレクトする」ように実装
  before_action :authenticate_user!, only: [:new]

  def index
    @items = Item.order("created_at DESC")
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :description, :category_id, :condition_id, :shipping_charge_id, :prefecture_id, :delivery_date_id, :price, :image).merge(user_id: current_user.id)
  end
end
