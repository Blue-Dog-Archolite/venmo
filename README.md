venmo
=====

Venmo API Integration


This is in super beta. Just started working on it.

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
