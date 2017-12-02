require 'test_helper'

class TalksControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get talks_name_url
    assert_response :success
  end

end
