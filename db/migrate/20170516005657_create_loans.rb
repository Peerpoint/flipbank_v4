class CreateLoans < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.string :trans_type
      t.decimal :gross_loan
      t.string :loan_term
      t.date :closing_date
      t.boolean :rehab
      t.decimal :rehab_funds
      t.string :coll_address
      t.string :prop_type
      t.boolean :occupy
      t.date :contract_exp
      t.decimal :seller_con
      t.decimal :salesprice
      t.decimal :as_is_val
      t.decimal :arv
      t.decimal :ltc
      t.decimal :ltv_as
      t.decimal :ltv_eff
      t.date :purch_date
      t.decimal :verif_improv
      t.decimal :payoff
      t.string :lender_name
      t.decimal :purch_price
      t.decimal :appraised_val
      t.boolean :borrower
      t.string :fname
      t.string :lname
      t.string :hemail
      t.string :hphone
      t.string :home_add
      t.string :citizen
      t.integer :credit_score
      t.date :bk
      t.integer :sixty_days
      t.boolean :foreclosure
      t.date :last_fc_ss
      t.string :entity
      t.string :bizname
      t.string :bizadd
      t.string :bizemail
      t.string :bizphone
      t.integer :purchsixmo
      t.integer :purchtwelvemo
      t.integer :purchlife
      t.decimal :avg_price
      t.date :dob
      t.string :ssn
      t.string :ein

      t.timestamps null: false
    end
  end
end

