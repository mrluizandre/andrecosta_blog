require 'test_helper'

class MelhorConsoleControllerTest < ActionDispatch::IntegrationTest
  test "should get elim" do
    get melhor_console_elim_url
    assert_response :success
  end

  test "should get semi" do
    get melhor_console_semi_url
    assert_response :success
  end

  test "should get final" do
    get melhor_console_final_url
    assert_response :success
  end

end
