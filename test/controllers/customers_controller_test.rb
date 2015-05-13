require 'test_helper'

class CustomersControllerTest < ActionController::TestCase
  setup do
    @customer = customers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customer" do
    assert_difference('Customer.count') do
      post :create, customer: { active_loans_count: @customer.active_loans_count, age: @customer.age, delayed_quotas_count: @customer.delayed_quotas_count, first_name: @customer.first_name, last_name: @customer.last_name, loans_count: @customer.loans_count, notes: @customer.notes, payed_loans_count: @customer.payed_loans_count, phone: @customer.phone, score: @customer.score, total_money_borrowed: @customer.total_money_borrowed, total_money_borrowed: @customer.total_money_borrowed }
    end

    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should show customer" do
    get :show, id: @customer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customer
    assert_response :success
  end

  test "should update customer" do
    patch :update, id: @customer, customer: { active_loans_count: @customer.active_loans_count, age: @customer.age, delayed_quotas_count: @customer.delayed_quotas_count, first_name: @customer.first_name, last_name: @customer.last_name, loans_count: @customer.loans_count, notes: @customer.notes, payed_loans_count: @customer.payed_loans_count, phone: @customer.phone, score: @customer.score, total_money_borrowed: @customer.total_money_borrowed, total_money_borrowed: @customer.total_money_borrowed }
    assert_redirected_to customer_path(assigns(:customer))
  end

  test "should destroy customer" do
    assert_difference('Customer.count', -1) do
      delete :destroy, id: @customer
    end

    assert_redirected_to customers_path
  end
end
