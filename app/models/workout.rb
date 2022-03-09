class Workout < ApplicationRecord

  validates :name, presence: true, length: {in: 2..25}
  validates :user_id, presence: true
  
  belongs_to :user
  has_many :workout_exercises, dependent: :destroy
  has_many :exercises, through: :workout_exercises

  def exercises
    workout_exercises.map do |workout_exercise|
      HTTP.headers("X-Rapidapi-Key" => Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises/exercise/#{workout_exercise.exerciseDB_id}").parse(:json)
    end
    
  end
end
