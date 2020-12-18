require 'test_helper'

class ArtipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @artip = artips(:one)
  end

  test "should get index" do
    get artips_url
    assert_response :success
  end

  test "should get new" do
    get new_artip_url
    assert_response :success
  end

  test "should create artip" do
    assert_difference('Artip.count') do
      post artips_url, params: { artip: { content: @artip.content } }
    end

    assert_redirected_to artip_url(Artip.last)
  end

  test "should show artip" do
    get artip_url(@artip)
    assert_response :success
  end

  test "should get edit" do
    get edit_artip_url(@artip)
    assert_response :success
  end

  test "should update artip" do
    patch artip_url(@artip), params: { artip: { content: @artip.content } }
    assert_redirected_to artip_url(@artip)
  end

  test "should destroy artip" do
    assert_difference('Artip.count', -1) do
      delete artip_url(@artip)
    end

    assert_redirected_to artips_url
  end
end
