require 'test_helper'

class Latex2pdfControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
