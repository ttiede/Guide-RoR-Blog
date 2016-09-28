module BannersHelper
  # Returns the full title on a per-page basis.
  def show_caption(banner = nil)
    ( (banner.title.present? && !banner.title.blank?) ||
      (banner.description.present? && !banner.description.blank?) ||
      (banner.link.present? && !banner.link.blank?)
      ) ? '' : 'display:none'
    end

    def has_banner?(banners = nil)
      (banners.present? && !banners.empty?) ? true : false
    end

end
