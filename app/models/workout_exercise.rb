class WorkoutExercise < ApplicationRecord
  belongs_to :workout
  has_many :exercises
  
  
  def exercise
    HTTP.headers("X-Rapidapi-Key" => Rails.application.credentials.exercise_api_key).get("https://exercisedb.p.rapidapi.com/exercises/exercise/#{exerciseDB_id}").parse(json)
    

  end
  
  
  
  
  
end
