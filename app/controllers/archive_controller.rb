class ArchiveController < ApplicationController
  def index
    @flyers = Flyer.all
  end

  def photo
  end

  def flyer
  end
end
