require 'test_helper'
include CarrierWave::Test::Matchers
class BannerTest < ActiveSupport::TestCase
  test "has an bannerr" do
    binding.pry
    banner = banners(:banner_with_attachment)
    assert File.exists?(banner.attachment?)
  end

  test "dont have banner" do
      binding.pry
      banner = banners(:banner_without_attachment)
      assert File.exists?(!banner.attachment?)
    end


  test "uploads an avatar" do
    user = Banner.create!(:attachment, fixture_file_upload('/files/tapir.jpg', 'image/jpg'))
    assert(File.exists?(banner.reload.attachment.file.path))
  end
end
