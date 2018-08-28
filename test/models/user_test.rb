# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = users(:valid)
    assert user.valid?
  end

  test 'user with no email' do
    user = users(:no_email)
    assert_not user.valid?
  end
end
