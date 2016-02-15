json.array!(@checkouts) do |checkout|
  json.extract! checkout, :id, :book_id, :user_id_id, :checkout_date, :checkin_date, :available
  json.url checkout_url(checkout, format: :json)
end
