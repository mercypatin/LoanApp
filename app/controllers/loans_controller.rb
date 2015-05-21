class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  # GET /loans
  # GET /loans.json
  def index
    @loans = Loan.all
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
    @loan = Loan.find(params[:id])
  end

  # GET /loans/new
  def new
    @loan = Loan.new
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  # POST /loans.json
  def create

    @loan = Loan.new(loan_params)

    respond_to do |format|
      if @loan.save
        format.html { redirect_to [@customer, @loan], notice: 'Loan was successfully created.' }
        format.json { render :show, json: [@customer, @loan], status: :created, location: [@customer, @loan] }
      else
        format.html { render :new }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loans/1
  # PATCH/PUT /loans/1.json
  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to @loan, notice: 'Loan was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loans/1
  # DELETE /loans/1.json
  def destroy
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: 'Loan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_params
      params.require(:loan).permit(:customer_id, :status, :amount, :currency, :notes, :tax_rate, :start_date, :estimated_end_date, :monthly_amout, :quotas, :quota_amount, :quotas_payed, :quotas_delayed, :payed_amount, :total_earnings, :earning_per_quota)
    end
  end
