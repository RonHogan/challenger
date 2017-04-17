require 'test_helper'

class ChallangeWallsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @challange_wall = challange_walls(:one)
  end

  test "should get index" do
    get challange_walls_url
    assert_response :success
  end

  test "should get new" do
    get new_challange_wall_url
    assert_response :success
  end

  test "should create challange_wall" do
    assert_difference('ChallangeWall.count') do
      post challange_walls_url, params: { challange_wall: {  } }
    end

    assert_redirected_to challange_wall_url(ChallangeWall.last)
  end

  test "should show challange_wall" do
    get challange_wall_url(@challange_wall)
    assert_response :success
  end

  test "should get edit" do
    get edit_challange_wall_url(@challange_wall)
    assert_response :success
  end

  test "should update challange_wall" do
    patch challange_wall_url(@challange_wall), params: { challange_wall: {  } }
    assert_redirected_to challange_wall_url(@challange_wall)
  end

  test "should destroy challange_wall" do
    assert_difference('ChallangeWall.count', -1) do
      delete challange_wall_url(@challange_wall)
    end

    assert_redirected_to challange_walls_url
  end
end
