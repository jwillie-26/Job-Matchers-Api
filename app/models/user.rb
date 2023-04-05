class User < ApplicationRecord
  has_secure_password

  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3 }
  has_many :favorites
  has_many :favorited_jobs, through: :favorites, source: :job
end
