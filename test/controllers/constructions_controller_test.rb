require 'test_helper'

class ConstructionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get constructions_index_url
    assert_response :success
  end

end
