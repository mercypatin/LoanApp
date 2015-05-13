require 'test_helper'

class LoansControllerTest < ActionController::TestCase
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post :create, loan: { amount: @loan.amount, currency: @loan.currency, customer_id: @loan.customer_id, earning_per_quota: @loan.earning_per_quota, estimated_end_date: @loan.estimated_end_date, monthly_amout: @loan.monthly_amout, notes: @loan.notes, payed_amount: @loan.payed_amount, quota_amount: @loan.quota_amount, quotas: @loan.quotas, quotas_delayed: @loan.quotas_delayed, quotas_payed: @loan.quotas_payed, start_date: @loan.start_date, status: @loan.status, tax_rate: @loan.tax_rate, total_earnings: @loan.total_earnings }
    end

    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should show loan" do
    get :show, id: @loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan
    assert_response :success
  end

  test "should update loan" do
    patch :update, id: @loan, loan: { amount: @loan.amount, currency: @loan.currency, customer_id: @loan.customer_id, earning_per_quota: @loan.earning_per_quota, estimated_end_date: @loan.estimated_end_date, monthly_amout: @loan.monthly_amout, notes: @loan.notes, payed_amount: @loan.payed_amount, quota_amount: @loan.quota_amount, quotas: @loan.quotas, quotas_delayed: @loan.quotas_delayed, quotas_payed: @loan.quotas_payed, start_date: @loan.start_date, status: @loan.status, tax_rate: @loan.tax_rate, total_earnings: @loan.total_earnings }
    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete :destroy, id: @loan
    end

    assert_redirected_to loans_path
  end
end
