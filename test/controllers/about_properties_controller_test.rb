require 'test_helper'

class AboutPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about_property = about_properties(:one)
  end

  test "should get index" do
    get about_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_about_property_url
    assert_response :success
  end

  test "should create about_property" do
    assert_difference('AboutProperty.count') do
      post about_properties_url, params: { about_property: {  } }
    end

    assert_redirected_to about_property_url(AboutProperty.last)
  end

  test "should show about_property" do
    get about_property_url(@about_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_property_url(@about_property)
    assert_response :success
  end

  test "should update about_property" do
    patch about_property_url(@about_property), params: { about_property: {  } }
    assert_redirected_to about_property_url(@about_property)
  end

  test "should destroy about_property" do
    assert_difference('AboutProperty.count', -1) do
      delete about_property_url(@about_property)
    end

    assert_redirected_to about_properties_url
  end
end
