json.array!(@loans) do |loan|
  json.extract! loan, :id, :customer_id, :status, :amount, :currency, :notes, :tax_rate, :start_date, :estimated_end_date, :monthly_amout, :quotas, :quota_amount, :quotas_payed, :quotas_delayed, :payed_amount, :total_earnings, :earning_per_quota
  json.url loan_url(loan, format: :json)
end
