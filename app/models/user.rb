# frozen_string_literal: true

class User < ApplicationRecord
  enum role: { basic: 0, admin: 1 }
  validates :email, presence: true
end
