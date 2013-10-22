class PagesController < ApplicationController
  def index
    @pages = Page.all
  end
  def new
    @page = Page.new
  end
  def edit
    @page = Page.find(params[:id])
  end
  def update
    @page = Page.find(params[:id])

    if @page.update(params[:page].permit(:name, :title))
      redirect_to pages_url
    else
      render 'edit'
    end
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to pages_url
  end
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    redirect_to pages_url
  end

  private
  def page_params
    params.require(:page).permit(:name,:title)
  end
end
