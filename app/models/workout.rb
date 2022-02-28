class Workout < ApplicationRecord

  validates :name, presence: true, length: {in: 2..25}
  validates :user_id, presence: true
  belongs_to :user
  has_many :workout_exercises
end
