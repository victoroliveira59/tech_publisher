require "test_helper"

class ReportsAuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_authors_index_url
    assert_response :success
  end
end
