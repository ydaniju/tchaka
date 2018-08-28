# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  fixtures :users

  test 'valid user creation' do
    user = users(:valid)
    post '/users', params: { name: user.name, email: user.email }

    assert_equal 201, status
  end
end
