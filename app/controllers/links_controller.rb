class LinksController < ApplicationController

  def index
    @links = Link.all
  end

  def show
    @link = Link.find_by_slug(params[:slug])
    render 'error/404', status: 404 if @link.nil?
  end
end
