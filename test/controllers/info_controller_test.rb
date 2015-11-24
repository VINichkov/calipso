require 'test_helper'

class InfoControllerTest < ActionController::TestCase
  test "should get socket" do
    get :socket
    assert_response :success
  end

  test "should get convention" do
    get :convention
    assert_response :success
  end

  test "should get offer" do
    get :offer
    assert_response :success
  end

end
