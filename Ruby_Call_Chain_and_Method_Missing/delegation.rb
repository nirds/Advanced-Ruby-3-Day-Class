class Invoice
  attr_reader :amount_owed, :amount_paid

  def initialize options=Hash.new(0.0)
    @amount_owed = options[:amount_owed]
    @amount_paid = options[:amount_paid]
  end

  def total_amout
   taxed_amount_owed - @amount_paid
  end

  def taxed_amount_owed
    @amount_owed * tax_rate
  end

  def tax_rate
    # some crazy lookup based on state and country
    state_tax_rate("WA") * country_tax_rate "USA"
  end

  def state_tax_rate state
    0.05
  end

  def country_tax_rate country
    0.10
  end
end