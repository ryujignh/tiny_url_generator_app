class RedirectController < ApplicationController

  def show
    url = params[:url]
    render 'error/404', status: 404 if url.nil?
    redirect_to url, allow_other_host: true
  end
end
