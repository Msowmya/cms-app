class PagesController < ApplicationController
  def index
    @pages = Page.all
  end
  def new
    @page = Page.new
  end
  def create
    @page = Page.new(params[:page].permit(:name, :title))
   if @page.save
    redirect_to pages_url
  else
    render 'new'
     end
  end
  private
  def page_params
    params.require(:page).permit(:name,:title)
  end
end
