class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def show
    @link = Link.find_by_slug(params[:slug])
    render 'error/404', status: 404 if @link.nil?
    @link.update_attribute(:clicked, @link.clicked + 1)
    redirect_to @link.url, allow_other_host: true
  end
end
