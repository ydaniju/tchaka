# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = users(:valid)
    assert user.valid?
  end

  test 'user with no email is invalid' do
    user = users(:valid)
    user.email = nil
    assert_not user.valid?
  end

  test 'has role enum column' do
    user = users(:valid)

    assert_includes user.defined_enums, 'role'
  end

  test 'user role can be basic' do
    user_roles = users(:valid).defined_enums['role']

    assert_includes user_roles, 'basic'
  end

  test 'user role can be admin' do
    user_roles = users(:valid).defined_enums['role']

    assert_includes user_roles, 'admin'
  end
end
