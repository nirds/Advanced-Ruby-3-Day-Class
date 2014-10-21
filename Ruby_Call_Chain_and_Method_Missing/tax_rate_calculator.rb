class TaxRateCalculator

  def initialize state, country
    @state = state
    @country = country
  end

  def tax_rate
    (state_tax_rate(@state) + country_tax_rate(@country)).round(2)
  end

  def state_tax_rate state
    0.05
  end

  def country_tax_rate country
    0.10
  end
end