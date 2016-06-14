require 'test_helper'

class PhotoCatagoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photo_catagory = photo_catagories(:one)
  end

  test "should get index" do
    get photo_catagories_url
    assert_response :success
  end

  test "should get new" do
    get new_photo_catagory_url
    assert_response :success
  end

  test "should create photo_catagory" do
    assert_difference('PhotoCatagory.count') do
      post photo_catagories_url, params: { photo_catagory: { name: @photo_catagory.name } }
    end

    assert_redirected_to photo_catagory_path(PhotoCatagory.last)
  end

  test "should show photo_catagory" do
    get photo_catagory_url(@photo_catagory)
    assert_response :success
  end

  test "should get edit" do
    get edit_photo_catagory_url(@photo_catagory)
    assert_response :success
  end

  test "should update photo_catagory" do
    patch photo_catagory_url(@photo_catagory), params: { photo_catagory: { name: @photo_catagory.name } }
    assert_redirected_to photo_catagory_path(@photo_catagory)
  end

  test "should destroy photo_catagory" do
    assert_difference('PhotoCatagory.count', -1) do
      delete photo_catagory_url(@photo_catagory)
    end

    assert_redirected_to photo_catagories_path
  end
end
