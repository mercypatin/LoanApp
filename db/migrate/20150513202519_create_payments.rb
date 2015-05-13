class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.references :loan, index: true, foreign_key: true
      t.string :status
      t.integer :amount, default: 0
      t.date :estimated_date
      t.date :payment_date
      t.text :notes

      t.timestamps null: false
    end
  end
end
