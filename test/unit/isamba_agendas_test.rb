require 'test_helper'

class IsambaAgendasTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert IsambaAgendas.new.valid?
  end
end
