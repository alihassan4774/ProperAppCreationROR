class MyPortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

  def new
    @portfolio_items = Portfolio.new
  end

  def create
    # Bug fix 1: params should permit a hash with specified keys, not 'expect' a specific structure.
    @portfolio_items = Portfolio.new(params.require(:portfolio_item).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_items.save
        # Bug fix 2: 'portfolio_path' is a collection route. You likely meant to redirect to the show page of the created item.
        # Assuming you have a 'show' action, the path would likely be portfolio_item_path(@portfolio_items) or similar,
        # but using the generic 'portfolio_path' with the item object should also work if you have standard RESTful routes.
        # If 'portfolio_path' leads to the index page, the original path name might be correct depending on desired UX.
        format.html { redirect_to @portfolio_items, notice: "Portfolio item was successfully created." }
        format.json { render :show, status: :created, location: @portfolio_items }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @portfolio_items.errors, status: :unprocessable_entity }
      end
    end
  end
end
