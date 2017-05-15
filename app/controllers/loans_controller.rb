class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy, :step1, :step2, :step3, :step4, :step5]

  # GET /loans
  # GET /loans.json
  def index
    @loan = Loan.all
  end

  # GET /loans/1
  # GET /loans/1.json
  def show
  end

  # GET /loans/new
  def new
    @step = "step1"
    @next_step = "step2"
    if cookies.signed[:loan_id]
      redirect_to edit_loan_path(cookies.signed[:loan_id])
    else
      @loan = Loan.new
    end
  end

  # GET /loans/1/edit
  def edit
    @step = "step1"
    @next_step = "step2"
    render "new"
  end

  def step1
    @step = "step1"
    @next_step = "step2"
    render "new"
  end

  def step2
    @step = "step2"
    @next_step = "step3"
    render "new"
  end

  def step3
    @step = "step3"
    @next_step = "step4"
    render "new"
  end

  def step4
    @step = "step4"
    @next_step = "step5"
    render "new"
  end

  def step5
    @step = "step5"
    @next_step = ""
    cookies.signed[:loan_id] = nil
    render "new"
  end

  # POST /loans
  # POST /loans.json
  def create
    @loan = Loan.new(loan_params)

    respond_to do |format|
      if @loan.save
        set_cookie
        format.html { redirect_to "/loans/#{@loan.id}/step2", notice: 'Loan was successfully submitted.' }
        format.json { render :show, status: :created, location: @loan }
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
        format.html { redirect_to "/loans/#{@loan.id}/#{loan_params[:next_step]}", notice: 'Loan was successfully updated.' }
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
      if cookies.signed[:loan_id] # take back to original loan form which user was filling
        @loan = Loan.find(cookies.signed[:loan_id])
      else
        redirect_to new_loan_path
      end
    end

    def set_cookie
      cookies.signed[:loan_id] = @loan.id
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_params
      # params.require(:loan).permit(:next_step, :trans_type, :gross_loan, :loan_term, :closing_date, :rehab, :rehab_funds, :coll_address, :prop_type, :occupy, :contract_exp, :seller_con, :salesprice, :as_is_val, :arv, :ltc, :ltv_as, :ltv_eff, :purch_date, :verif_improv, :payoff, :lender_name, :purch_price, :appraised_val, :borrower, :fname, :lname, :hemail, :hphone, :home_add, :citizen, :credit_score, :bk, :sixty_days, :foreclosure, :last_fc_ss, :entity, :bizname, :bizadd, :bizemail, :bizphone, :purchsixmo, :purchtwelvemo, :purchlife, :avg_price, :dob, :ssn, :ein, :sales_contract)
      params.require(:loan).permit(:next_step, :trans_type, :gross_loan, :loan_term, :closing_date, :rehab, :rehab_funds, :coll_address, :prop_type, :occupy, :contract_exp, :seller_con, :salesprice, :as_is_val, :arv, :ltc, :ltv_as, :ltv_eff, :purch_date, :verif_improv, :payoff, :lender_name, :purch_price, :appraised_val, :borrower, :fname, :lname, :hemail, :hphone, :home_add, :citizen, :credit_score, :bk, :sixty_days, :foreclosure, :last_fc_ss, :entity, :bizname, :bizadd, :bizemail, :bizphone, :purchsixmo, :purchtwelvemo, :purchlife, :avg_price, :dob, :ssn, :ein, :total_amount_requested, :sales_contract, :loan_to_cost_eq, :loan_to_value_as_is, :loan_to_value_effective)
    end
end
