require 'test_helper'

class SwimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @swim = swims(:one)
  end

  test "should get index" do
    get swims_url
    assert_response :success
  end

  test "should get new" do
    get new_swim_url
    assert_response :success
  end

  test "should create swim" do
    assert_difference('Swim.count') do
      post swims_url, params: { swim: { distance: @swim.distance, duration_minutes: @swim.duration_minutes, lengths: @swim.lengths, swim_date: @swim.swim_date, user_id: @swim.user_id } }
    end

    assert_redirected_to swim_url(Swim.last)
  end

  test "should show swim" do
    get swim_url(@swim)
    assert_response :success
  end

  test "should get edit" do
    get edit_swim_url(@swim)
    assert_response :success
  end

  test "should update swim" do
    patch swim_url(@swim), params: { swim: { distance: @swim.distance, duration_minutes: @swim.duration_minutes, lengths: @swim.lengths, swim_date: @swim.swim_date, user_id: @swim.user_id } }
    assert_redirected_to swim_url(@swim)
  end

  test "should destroy swim" do
    assert_difference('Swim.count', -1) do
      delete swim_url(@swim)
    end

    assert_redirected_to swims_url
  end
end
