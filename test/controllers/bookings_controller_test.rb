require 'test_helper'

class BookingsControllerTest < ActionDispatch::IntegrationTest
  test "should get confirmed" do
    get bookings_confirmed_url
    assert_response :success
  end

end
