venmo
=====

Venmo API Integration

After install update these values to reflect your Environment

Venmo.configure do |c|
  c.access_token= "My Super Secret API"
  c.privacy= "private"
  #private, public, friends are vaild options
  #see Venmo documentation
end
