<<<<<<< Updated upstream
=======
require_relative 'tax_rate_calculator'
require 'forwardable'

>>>>>>> Stashed changes
class Invoice
  attr_reader :amount_owed, :amount_paid

<<<<<<< Updated upstream
  def initialize options = Hash.new(0.0)
    @amount_owed = options[:amount_owed]
    @amount_paid = options[:amount_paid]
=======
  def_delegators :@tax_calculator, :tax_rate, :state_tax_rate, :country_tax_rate

  def initialize options = Hash.new(0.0)
    @amount_owed = options[:amount_owed]
    @amount_paid = options[:amount_paid]
    @tax_calculator = TaxRateCalculator.new("WA", "USA")
>>>>>>> Stashed changes
  end

  def total_amount
   (@amount_owed + tax_amount_owed) - @amount_paid
  end

  def tax_amount_owed
    (@amount_owed * tax_rate).round(2)
  end

<<<<<<< Updated upstream
  def tax_rate
    # some crazy lookup based on state and country
    (state_tax_rate("WA") + country_tax_rate("USA")).round(2)
  end

  def state_tax_rate state
    0.05
  end
=======
  # def respond_to? method_name
  #   return true if should_call_tax_calc? method_name
  #   super
  # end

  # def method_missing m, *args, &block
  #   return @tax_calculator.send(m, *args, &block) if should_call_tax_calc? m
  #   super
  # end

private

  # def should_call_tax_calc? m
  #   m.to_s.include? 'tax'
  #   #@tax_calculator.respond_to? m
  # end
>>>>>>> Stashed changes

  def country_tax_rate country
    0.10
  end
end