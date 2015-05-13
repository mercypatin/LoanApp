class CreateLoans < ActiveRecord::Migration
  def change
    create_table :loans do |t|
      t.references :customer, index: true, foreign_key: true
      t.string :status
      t.decimal :amount, precision: 11, scale: 2
      t.string :currency
      t.text :notes
      t.decimal :tax_rate, precision: 11, scale: 2
      t.date :start_date
      t.date :estimated_end_date
      t.integer :monthly_amout
      t.integer :quotas
      t.decimal :quota_amount, precision: 11, scale: 2
      t.integer :quotas_payed, default: 0 
      t.integer :quotas_delayed, default: 0
      t.decimal :payed_amount, precision: 11, scale: 2, default: 0
      t.decimal :total_earnings, precision: 11, scale: 2, default: 0
      t.decimal :earning_per_quota, precision: 11, scale: 2

      t.timestamps null: false
    end
  end
end
