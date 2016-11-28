require 'test_helper'

class AboutRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @about_room = about_rooms(:one)
  end

  test "should get index" do
    get about_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_about_room_url
    assert_response :success
  end

  test "should create about_room" do
    assert_difference('AboutRoom.count') do
      post about_rooms_url, params: { about_room: {  } }
    end

    assert_redirected_to about_room_url(AboutRoom.last)
  end

  test "should show about_room" do
    get about_room_url(@about_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_about_room_url(@about_room)
    assert_response :success
  end

  test "should update about_room" do
    patch about_room_url(@about_room), params: { about_room: {  } }
    assert_redirected_to about_room_url(@about_room)
  end

  test "should destroy about_room" do
    assert_difference('AboutRoom.count', -1) do
      delete about_room_url(@about_room)
    end

    assert_redirected_to about_rooms_url
  end
end
