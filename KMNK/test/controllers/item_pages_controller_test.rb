require 'test_helper'

class ItemPagesControllerTest < ActionController::TestCase
  test "should get calzone" do
    get :calzone
    assert_response :success
  end

  test "should get pizza" do
    get :pizza
    assert_response :success
  end

end
