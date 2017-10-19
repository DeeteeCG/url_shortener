class UrlsController < ApplicationController
  def index
    @url = Url.all
  end

  def show
    @url = Url.find(params[:id])
  end
end
