require 'test_helper'

class RentalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental = rentals(:one)
  end

  test "should get index" do
    get rentals_url, as: :json
    assert_response :success
  end

  test "should create rental" do
    assert_difference('Rental.count') do
      post rentals_url, params: { rental: { address_line1: @rental.address_line1, address_line2: @rental.address_line2, available: @rental.available, city: @rental.city, country: @rental.country, end_date: @rental.end_date, lat: @rental.lat, long: @rental.long, post_code: @rental.post_code, price: @rental.price, rooms: @rental.rooms, start_date: @rental.start_date, user_id: @rental.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show rental" do
    get rental_url(@rental), as: :json
    assert_response :success
  end

  test "should update rental" do
    patch rental_url(@rental), params: { rental: { address_line1: @rental.address_line1, address_line2: @rental.address_line2, available: @rental.available, city: @rental.city, country: @rental.country, end_date: @rental.end_date, lat: @rental.lat, long: @rental.long, post_code: @rental.post_code, price: @rental.price, rooms: @rental.rooms, start_date: @rental.start_date, user_id: @rental.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy rental" do
    assert_difference('Rental.count', -1) do
      delete rental_url(@rental), as: :json
    end

    assert_response 204
  end
end
