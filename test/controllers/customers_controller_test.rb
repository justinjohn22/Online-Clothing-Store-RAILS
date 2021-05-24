require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "valid signup" do
    get signup_path
    assert_difference 'Customer.count', 1 do
      post_via_redirect customers_path, user: { name:  "RAD",email: "rad2021@gmail.com",password: "Rad2021", password_confirmation: "Rad2021" }
    end
    assert_template 'Customer/show'
  end
end
