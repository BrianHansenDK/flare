class User < ApplicationRecord
  has_secure_password
  validates :full_name, presence: true,
                        format: { with: /\A[^@\s]+ [^@\s]+\z/, message: 'must be in valid format.' }
  validates :email, presence: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'must be in valid format.' }
end
