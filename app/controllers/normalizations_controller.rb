class NormalizationsController < ApplicationController

  def index
    @products = Admin::Product.all
  end
end
