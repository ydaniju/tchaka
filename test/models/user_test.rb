# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'the truth' do
    user = users(:default)

    assert user.valid?
  end
end
