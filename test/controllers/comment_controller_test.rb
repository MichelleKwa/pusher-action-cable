require 'test_helper'

class CommentControllerTest < ActionDispatch::IntegrationTest
  test "should get store" do
    get comment_store_url
    assert_response :success
  end

end
