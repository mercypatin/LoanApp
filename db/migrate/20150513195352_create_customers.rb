class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :phone
      t.text :notes
      t.integer :loans_count, default: 0
      t.integer :payed_loans_count, default: 0
      t.integer :active_loans_count, default: 0
      t.decimal :total_money_borrowed, precision: 11, scale:2 
      t.integer :delayed_quotas_count, default: 0
      t.integer :score

      t.timestamps null: false
    end
  end
end
