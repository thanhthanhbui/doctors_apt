require 'test_helper'

class AptsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get apts_index_url
    assert_response :success
  end

  test "should get new" do
    get apts_new_url
    assert_response :success
  end

end
