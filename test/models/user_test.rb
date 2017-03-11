require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "valid with password confirmation match" do
    user = User.new password: 'secret', password_confirmation: 'secret'
    assert user.valid?
  end

  test "invalid with password confirmation not match" do
    user = User.new password: 'secret', password_confirmation: 'different'
    assert user.invalid?
  end
end
