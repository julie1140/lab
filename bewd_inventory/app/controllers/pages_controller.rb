class PagesController < ApplicationController
  def index
    @text = params[:text]
  end

  def create
    puts params.inspect
    render :parrot
  end

  def parrot
    @text = params[:text]
  end
end
