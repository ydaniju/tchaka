# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  fixtures :users

  test 'valid user creation has status 201' do
    user = users(:valid)
    post '/users', params: { user: { name: user.name, email: user.email } }

    assert_equal 201, status
  end

  test 'valid user creation returns user object' do
    user = users(:valid)
    post '/users', params: { user: { name: user.name, email: user.email } }

    assert_equal user.name, JSON.parse(body)['name']
  end
end
