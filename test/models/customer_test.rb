require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @customer = Customer.new(name: 'Example Customer', email: 'customer@example.com')
  end

  test 'should be valid' do
    assert @user.valid?
  end
end
