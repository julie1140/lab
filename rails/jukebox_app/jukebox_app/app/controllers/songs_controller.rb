class SongsController < ApplicationController
  def index
  end

  def artists
    @songs=Song.all
  end

  def shuffle
    @songs=Song.all.shuffle
  end
end
