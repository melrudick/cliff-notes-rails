require 'test_helper'

class FlagsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get flags_new_url
    assert_response :success
  end

end
