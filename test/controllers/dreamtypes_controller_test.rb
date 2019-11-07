require 'test_helper'

class DreamtypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dreamtypes_index_url
    assert_response :success
  end

  test "should get show" do
    get dreamtypes_show_url
    assert_response :success
  end

end
