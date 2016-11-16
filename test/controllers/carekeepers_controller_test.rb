require 'test_helper'

class CarekeepersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carekeeper = carekeepers(:one)
  end

  test "should get index" do
    get carekeepers_url
    assert_response :success
  end

  test "should get new" do
    get new_carekeeper_url
    assert_response :success
  end

  test "should create carekeeper" do
    assert_difference('Carekeeper.count') do
      post carekeepers_url, params: { carekeeper: { lastname: @carekeeper.lastname, name: @carekeeper.name } }
    end

    assert_redirected_to carekeeper_url(Carekeeper.last)
  end

  test "should show carekeeper" do
    get carekeeper_url(@carekeeper)
    assert_response :success
  end

  test "should get edit" do
    get edit_carekeeper_url(@carekeeper)
    assert_response :success
  end

  test "should update carekeeper" do
    patch carekeeper_url(@carekeeper), params: { carekeeper: { lastname: @carekeeper.lastname, name: @carekeeper.name } }
    assert_redirected_to carekeeper_url(@carekeeper)
  end

  test "should destroy carekeeper" do
    assert_difference('Carekeeper.count', -1) do
      delete carekeeper_url(@carekeeper)
    end

    assert_redirected_to carekeepers_url
  end
end
