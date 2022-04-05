workout = {
  "id": 67,
  "name": "serializer test workout",
  "exercises": [
    {
      "bodyPart": "cardio",
      "equipment": "body weight",
      "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/3223.gif",
      "id": "3223",
      "name": "star jump (male)",
      "target": "cardiovascular system"
    },
    {
      "bodyPart": "chest",
      "equipment": "leverage machine",
      "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/0009.gif",
      "id": "0009",
      "name": "assisted chest dip (kneeling)",
      "target": "pectorals"
    },
    {
      "bodyPart": "cardio",
      "equipment": "body weight",
      "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/3223.gif",
      "id": "3223",
      "name": "star jump (male)",
      "target": "cardiovascular system"
    },
    {
      "bodyPart": "waist",
      "equipment": "assisted",
      "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/0010.gif",
      "id": "0010",
      "name": "assisted hanging knee raise with throw down",
      "target": "abs"
    },
    {
      "bodyPart": "lower legs",
      "equipment": "assisted",
      "gifUrl": "http://d205bpvrqc9yn1.cloudfront.net/1708.gif",
      "id": "1708",
      "name": "assisted lying calves stretch",
      "target": "calves"
    }
  ]
}
exercise_ids = []
index = 0
while index < workout[:exercises].length
  exercise_ids << workout[:exercises][index][:id]
  index +=1
end
p exercise_ids
  array =[]
  workout[:exercises].each do |exercise| 
  array << [:exercises][:id]
end
p array