require 'test_helper'

class AboutYousControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about_you = about_yous(:one)
  end

  test "should get index" do
    get about_yous_url
    assert_response :success
  end

  test "should get new" do
    get new_about_you_url
    assert_response :success
  end

  test "should create about_you" do
    assert_difference('AboutYou.count') do
      post about_yous_url, params: { about_you: {  } }
    end

    assert_redirected_to about_you_url(AboutYou.last)
  end

  test "should show about_you" do
    get about_you_url(@about_you)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_you_url(@about_you)
    assert_response :success
  end

  test "should update about_you" do
    patch about_you_url(@about_you), params: { about_you: {  } }
    assert_redirected_to about_you_url(@about_you)
  end

  test "should destroy about_you" do
    assert_difference('AboutYou.count', -1) do
      delete about_you_url(@about_you)
    end

    assert_redirected_to about_yous_url
  end
end
