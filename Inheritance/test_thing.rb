require_relative 'test_module'

class TestThing
  extend TestModule
  include TestModule
end