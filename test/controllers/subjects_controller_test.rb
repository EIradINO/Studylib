require 'test_helper'

class SubjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get exam" do
    get subjects_exam_url
    assert_response :success
  end

  test "should get english" do
    get subjects_english_url
    assert_response :success
  end

  test "should get worldhistory" do
    get subjects_worldhistory_url
    assert_response :success
  end

  test "should get chemistry" do
    get subjects_chemistry_url
    assert_response :success
  end

  test "should get math1" do
    get subjects_math1_url
    assert_response :success
  end

  test "should get math2" do
    get subjects_math2_url
    assert_response :success
  end

  test "should get physics" do
    get subjects_physics_url
    assert_response :success
  end

end
