class MyPortfoliosController < ApplicationController
  def index
    @portfolio_items= Portfolio.all
  end
end
