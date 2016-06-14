require 'test_helper'

class PhotographsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @photograph = photographs(:one)
  end

  test "should get index" do
    get photographs_url
    assert_response :success
  end

  test "should get new" do
    get new_photograph_url
    assert_response :success
  end

  test "should create photograph" do
    assert_difference('Photograph.count') do
      post photographs_url, params: { photograph: { active: @photograph.active, descritpion: @photograph.descritpion, image: @photograph.image, is_cover: @photograph.is_cover, order: @photograph.order, photo_catagory_id: @photograph.photo_catagory_id, price: @photograph.price, title: @photograph.title } }
    end

    assert_redirected_to photograph_path(Photograph.last)
  end

  test "should show photograph" do
    get photograph_url(@photograph)
    assert_response :success
  end

  test "should get edit" do
    get edit_photograph_url(@photograph)
    assert_response :success
  end

  test "should update photograph" do
    patch photograph_url(@photograph), params: { photograph: { active: @photograph.active, descritpion: @photograph.descritpion, image: @photograph.image, is_cover: @photograph.is_cover, order: @photograph.order, photo_catagory_id: @photograph.photo_catagory_id, price: @photograph.price, title: @photograph.title } }
    assert_redirected_to photograph_path(@photograph)
  end

  test "should destroy photograph" do
    assert_difference('Photograph.count', -1) do
      delete photograph_url(@photograph)
    end

    assert_redirected_to photographs_path
  end
end
