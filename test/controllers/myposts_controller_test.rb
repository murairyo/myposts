require 'test_helper'

class MypostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myposts_index_url
    assert_response :success
  end

end
