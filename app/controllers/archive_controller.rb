class ArchiveController < ApplicationController
  def index
    @flyers = Flyer.all
    @bands = Band.all
  end

  def photo
  end

  def flyer
  end
end
