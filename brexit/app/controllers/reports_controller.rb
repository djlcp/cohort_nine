class ReportsController < ApplicationController
  def index
    @sales = Sale.all
    @orders = Orders.all
  end
end
