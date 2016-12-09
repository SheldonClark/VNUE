require 'test_helper'

class BandsControllerTest < ActionDispatch::IntegrationTest
  test "new returns a success" do
    get new_band_url
    assert_response :success
  end
  test "create adds a new band" do
    band = FactoryGirl.build(:band)
    assert_difference('Band.count', 1) do
      post bands_url, params: {band: {email: band.email, password: band.password, password_confirmation: band.password_confirmation}}
    end
  end
  test "create redirects to band show" do
    band = FactoryGirl.build(:band)
    post bands_url, params: {band: {email: band.email, password: band.password, password_confirmation: band.password_confirmation}}
    assert_redirected_to root_url
  end
  #edit/update function tests
  test "edit returns a success" do
   band = FactoryGirl.create(:band)
   get edit_band_path(band)
   assert_response :success
  end
  #TODO add update tests and fix edit test
end
