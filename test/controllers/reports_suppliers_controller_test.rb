require "test_helper"

class ReportsSuppliersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reports_suppliers_index_url
    assert_response :success
  end
end
