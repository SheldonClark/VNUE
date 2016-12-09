require 'test_helper'

class BandSessionsControllerTest < ActionDispatch::IntegrationTest
  test "new returns a success" do 
    get new_band_sessions_url
    assert_response :success
  end 
end
