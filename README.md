venmo
=====

Venmo API Integration

====

Recent Fixes in 0.3.2

Curl now posts to endpoint with --data call.


====

Venmo.pay_by_email(email, amount, note)

Venmo.pay_by_user_id(user_id, amount, note)

Venmo.pay_by_phone_number(phone_number, amount, note)

I think these are working. Tests coming soon. 

After install update these values to reflect your Environment

Venmo.configure do |c|
  c.access_token= "My Super Secret API"
  c.privacy= "private"
  #private, public, friends are vaild options
  #see Venmo documentation
end
