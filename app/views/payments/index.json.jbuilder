json.array!(@payments) do |payment|
  json.extract! payment, :id, :loan_id, :status, :amount, :estimated_date, :payment_date, :notes
  json.url payment_url(payment, format: :json)
end
