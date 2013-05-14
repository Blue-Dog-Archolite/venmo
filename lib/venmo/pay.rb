module Venmo
  module Pay

    def self.pay_by_email(email, amount, note)
      send_hash= common(amount,note, { :email => email})
      core_pay
    # -d email= \
    end

    def self.pay_by_user_id(user_id, amount, note)
      send_hash= common(amount,note, {:user_id => user_id})
      core_pay
    # -d user_id= \
    end

    def self.pay_by_phone_number(phone_number, amount, note)
      send_hash = common(amount,note, {:phone_number=> phone_number})
      core_pay
    # -d phone= \
    end

    protected
    def common(amount, note, merge_in)
      {amount: amount,
        note: note}.merge(merge_in)
    end

    def core_pay
      base_url = "curl https://api.venmo.com/payments \ -d"
      to_send = base_url+send_hash.join('\ -d')
      debugger
      `#{to_send}`
    end

    def send_hash=(update_hash)
      send_hash
      @send_hash.merge(update_hash)
    end

    def send_hash
      @send_hash ||= {access_token: Venmo.access_token,
                      audience: (Venmo.privacy || "private")}
    end
  end
end
