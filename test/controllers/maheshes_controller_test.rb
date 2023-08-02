require "test_helper"

class MaheshesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mahesh = maheshes(:one)
  end

  test "should get index" do
    get maheshes_url
    assert_response :success
  end

  test "should get new" do
    get new_mahesh_url
    assert_response :success
  end

  test "should create mahesh" do
    assert_difference('Mahesh.count') do
      post maheshes_url, params: { mahesh: { age: @mahesh.age, name: @mahesh.name } }
    end

    assert_redirected_to mahesh_url(Mahesh.last)
  end

  test "should show mahesh" do
    get mahesh_url(@mahesh)
    assert_response :success
  end

  test "should get edit" do
    get edit_mahesh_url(@mahesh)
    assert_response :success
  end

  test "should update mahesh" do
    patch mahesh_url(@mahesh), params: { mahesh: { age: @mahesh.age, name: @mahesh.name } }
    assert_redirected_to mahesh_url(@mahesh)
  end

  test "should destroy mahesh" do
    assert_difference('Mahesh.count', -1) do
      delete mahesh_url(@mahesh)
    end

    assert_redirected_to maheshes_url
  end
end
