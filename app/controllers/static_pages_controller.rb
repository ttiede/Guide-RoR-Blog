class StaticPagesController < ApplicationController
  def home
    @banners = Banner.all
  end

  def help
  end

  def about
  end

end
