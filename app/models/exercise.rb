class Exercise < ApplicationRecord
  belongs_to :workout

  def ex_name
    name
  end
  def ex_equip
    equipment
  end
  
end
