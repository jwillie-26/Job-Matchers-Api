class Job < ApplicationRecord
  has_many :favorites, dependent: :destroy
end
