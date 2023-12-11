require "test_helper"

class ReportBooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get report_books_index_url
    assert_response :success
  end
end
