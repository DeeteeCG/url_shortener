class UrlsController < ApplicationController
  def index
    @url = Url.all
  end
end
