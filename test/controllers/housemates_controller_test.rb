require 'test_helper'

class HousematesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housemate = housemates(:one)
  end

  test "should get index" do
    get housemates_url
    assert_response :success
  end

  test "should get new" do
    get new_housemate_url
    assert_response :success
  end

  test "should create housemate" do
    assert_difference('Housemate.count') do
      post housemates_url, params: { housemate: {  } }
    end

    assert_redirected_to housemate_url(Housemate.last)
  end

  test "should show housemate" do
    get housemate_url(@housemate)
    assert_response :success
  end

  test "should get edit" do
    get edit_housemate_url(@housemate)
    assert_response :success
  end

  test "should update housemate" do
    patch housemate_url(@housemate), params: { housemate: {  } }
    assert_redirected_to housemate_url(@housemate)
  end

  test "should destroy housemate" do
    assert_difference('Housemate.count', -1) do
      delete housemate_url(@housemate)
    end

    assert_redirected_to housemates_url
  end
end
