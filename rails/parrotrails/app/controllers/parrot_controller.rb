class ParrotController < ApplicationController

  def index
  end


  def about
  @parrotsays=params[:parrottext]
  if @parrotsays==""
    redirect_to '/'
  end
  end

  def monkey
  @monkeysays=params[:monkeytext]
  if @monkeysays=="" #You can also do @monkeysays.blank?
    redirect_to '/'
  end
  end

end
