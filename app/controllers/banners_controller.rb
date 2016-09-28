class BannersController < ApplicationController
  def index
    @vanners = Banner.all
  end

  def new
    @banner = Banner.new
  end

  def create
    @banner = Banner.new(banner_params)

    if @banner.save
      redirect_to banners_path, notice: "The Banner #{@banner.title} has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @banner = Banner.find(params[:id])
    @banner.destroy
    redirect_to banners_path, notice:  "The Banner #{@banner.title} has been deleted."
  end

private
  def banner_params
    params.require(:banner).permit(:title, :attachment)
  end
end
