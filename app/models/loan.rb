class Loan < ActiveRecord::Base
  attr_accessor :next_step
  before_save :calculate_total_amount, :calculate_loan_to_cost_eq, :calculate_loan_to_value_as_is, :calculate_loan_to_value_effective

  private

  def calculate_total_amount
    if gross_loan_changed? || rehab_funds_changed?
      self.total_amount_requested = gross_loan + rehab_funds
    end
  end

  def calculate_loan_to_cost_eq
    if salesprice_changed? && salesprice > 0
      self.loan_to_cost_eq = (total_amount_requested/salesprice).round(2)
    end
  end

  def calculate_loan_to_value_as_is
    if as_is_val_changed? && as_is_val > 0
      self.loan_to_value_as_is = (total_amount_requested/as_is_val).round(2)
    end
  end

  def calculate_loan_to_value_effective
    if arv_changed? && arv > 0
      self.loan_to_value_effective = (total_amount_requested/arv).round(2)
    end
  end
end
