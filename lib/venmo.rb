require 'venmo/config'
require 'venmo/sender'
require 'venmo/pay'

module Venmo
  extend Config
  extend Pay

  def self.configure
    yield self
  end

   def self.sender(options={})
    Venmo::Sender.new(options)
  end

  def self.configure
    yield self
  end

  def self.method_missing(method, *args, &block)
    return super unless sender.respond_to?(method)
    sender.send(method, *args, &block)
  end

  def self.respond_to?(method)
    return sender.respond_to?(method) || super
  end
end
