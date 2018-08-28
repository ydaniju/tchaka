# frozen_string_literal: true

require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  fixtures :users

  test 'valid user creation has status 201' do
    post '/users',
         params: { user: { name: 'Calvin', email: 'klein@shaka.com' } }

    assert_equal 201, status
  end

  test 'valid user creation returns user object' do
    post '/users',
         params: { user: { name: 'Calvin', email: 'klein@shaka.com' } }

    assert_equal 'Calvin', JSON.parse(body)['name']
  end

  test 'valid user index returns all users' do
    get '/users'

    assert JSON.parse(body).is_a?(Array)
    assert_equal JSON.parse(body).count, 1
  end

  test 'valid user index has status 200' do
    get '/users'

    assert_equal status, 200
  end
end
