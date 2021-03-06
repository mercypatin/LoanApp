json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :age, :phone, :notes, :loans_count, :payed_loans_count, :active_loans_count, :total_money_borrowed, :total_money_borrowed, :delayed_quotas_count, :score
  json.url customer_url(customer, format: :json)
end
