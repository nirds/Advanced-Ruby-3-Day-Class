require 'minitest/autorun'
require_relative 'delegation'

describe "Invoice" do
  before do
    @invoice = Invoice.new({
      amount_owed: 20.00,
      amount_paid: 5.63,
    })
  end

  it "returns the country_tax_rate" do
    @invoice.country_tax_rate("Canadia").must_equal 0.10
  end

  it "returns the state_tax_rate" do
    @invoice.state_tax_rate("Delaware").must_equal 0.05
  end

  it "calculates the tax_rate" do
    @invoice.tax_rate.must_equal 0.15
  end

  it "calculates the total " do
    @invoice.tax_amount_owed.must_equal 3.0
  end

  it "calculates the total_amount" do
    @invoice.total_amount.must_equal 17.37
  end
end