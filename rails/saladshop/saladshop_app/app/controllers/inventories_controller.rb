class InventoriesController < ApplicationController
  def index
    @ingredients=Inventory.all
  end
end
