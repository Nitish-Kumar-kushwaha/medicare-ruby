class StoreController < ApplicationController
  def index
    @my_stores = Store.all
    render
  end

  def checkout

  end
end
