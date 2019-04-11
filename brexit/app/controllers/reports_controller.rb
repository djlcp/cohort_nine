class ReportsController < ApplicationController
  def index
    @sales = Sale.all
    @order = Order.all
  end
end
