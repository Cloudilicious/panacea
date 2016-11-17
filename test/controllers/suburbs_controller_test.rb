require 'test_helper'

class SuburbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suburb = suburbs(:one)
  end

  test "should get index" do
    get suburbs_url
    assert_response :success
  end

  test "should get new" do
    get new_suburb_url
    assert_response :success
  end

  test "should create suburb" do
    assert_difference('Suburb.count') do
      post suburbs_url, params: { suburb: { name: @suburb.name } }
    end

    assert_redirected_to suburb_url(Suburb.last)
  end

  test "should show suburb" do
    get suburb_url(@suburb)
    assert_response :success
  end

  test "should get edit" do
    get edit_suburb_url(@suburb)
    assert_response :success
  end

  test "should update suburb" do
    patch suburb_url(@suburb), params: { suburb: { name: @suburb.name } }
    assert_redirected_to suburb_url(@suburb)
  end

  test "should destroy suburb" do
    assert_difference('Suburb.count', -1) do
      delete suburb_url(@suburb)
    end

    assert_redirected_to suburbs_url
  end
end
