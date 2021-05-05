class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
    @init_counter = init_counter
    @products = Product.order(:title)
    @counter = inc_counter
    @countermessage = "Access to the store is #{@counter} " + 'time'.pluralize(@counter) if @counter > 5
  end

  def init_counter
    session[:counter] = 0 if session[:counter].nil?
  end

  def inc_counter
    session[:counter] += 1
  end
end
