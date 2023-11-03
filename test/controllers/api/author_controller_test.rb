require "test_helper"

class Api::AuthorControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get api_author_name_url
    assert_response :success
  end
end
