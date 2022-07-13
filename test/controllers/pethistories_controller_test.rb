require "test_helper"

class PethistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pethistory = pethistories(:one)
  end

  test "should get index" do
    get pethistories_url
    assert_response :success
  end

  test "should get new" do
    get new_pethistory_url
    assert_response :success
  end

  test "should create pethistory" do
    assert_difference('Pethistory.count') do
      post pethistories_url, params: { pethistory: { anamnesis: @pethistory.anamnesis, date: @pethistory.date, diagnosis: @pethistory.diagnosis, height: @pethistory.height, pet_id: @pethistory.pet_id, state: @pethistory.state, weight: @pethistory.weight } }
    end

    assert_redirected_to pethistory_url(Pethistory.last)
  end

  test "should show pethistory" do
    get pethistory_url(@pethistory)
    assert_response :success
  end

  test "should get edit" do
    get edit_pethistory_url(@pethistory)
    assert_response :success
  end

  test "should update pethistory" do
    patch pethistory_url(@pethistory), params: { pethistory: { anamnesis: @pethistory.anamnesis, date: @pethistory.date, diagnosis: @pethistory.diagnosis, height: @pethistory.height, pet_id: @pethistory.pet_id, state: @pethistory.state, weight: @pethistory.weight } }
    assert_redirected_to pethistory_url(@pethistory)
  end

  test "should destroy pethistory" do
    assert_difference('Pethistory.count', -1) do
      delete pethistory_url(@pethistory)
    end

    assert_redirected_to pethistories_url
  end
end
