class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :workouts, dependent: :destroy
  has_many :workout_exercises, through: :workouts
end
