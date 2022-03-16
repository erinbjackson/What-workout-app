class Workout < ApplicationRecord

  validates :name, presence: true, length: {in: 2..25}
  validates :user_id, presence: true
  
  belongs_to :user
  has_many :workout_exercises, dependent: :destroy
  

  def exercises
    workout_exercises.map do |workout_exercise|
      response = HTTP.headers("X-Rapidapi-Key" => Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises/exercise/#{workout_exercise.exerciseDB_id}").parse(:json)
      response["name"] =  non_sexist_name(response["name"])
      response
    end
  end
  

  def non_sexist_name (name) 
    name.slice! "(male)"
    name.gsub! "sissy ", "lean back "
    name
  end
  
  
end
