class ReportsController < ApplicationController
  def index
    @sales = Sale.all
    @orders = Order.all
  end
end
