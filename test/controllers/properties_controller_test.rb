require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url, as: :json
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { adress_line1: @property.adress_line1, adress_line2: @property.adress_line2, available: @property.available, city: @property.city, country: @property.country, end_date: @property.end_date, latitude: @property.latitude, longitude: @property.longitude, postcode: @property.postcode, price: @property.price, property_id: @property.property_id, rooms: @property.rooms, start_date: @property.start_date, user_id: @property.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show property" do
    get property_url(@property), as: :json
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { adress_line1: @property.adress_line1, adress_line2: @property.adress_line2, available: @property.available, city: @property.city, country: @property.country, end_date: @property.end_date, latitude: @property.latitude, longitude: @property.longitude, postcode: @property.postcode, price: @property.price, property_id: @property.property_id, rooms: @property.rooms, start_date: @property.start_date, user_id: @property.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property), as: :json
    end

    assert_response 204
  end
end
