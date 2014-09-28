# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
20.times do 
	Student.create(name: Faker::Name.name, username: Faker::Internet.user_name, grade: "3rd", password: "password")
end

Teacher.create(prefix: "Ms.", name: "Hornickel", subject: "Science", email: "hornickel@school.edu", password: "password", image_url: "https://media.licdn.com/mpr/mpr/shrink_200_200/p/5/005/075/011/1c512cb.jpg")
AssignmentType.create(name: "Caine's Arcade Write-Up", instructions: "Watch the video above and answer the following questions. What did you think about it? How would you build your own arcade like Caine's? Describe your plan to build an arcade. What games would you have? What materials would you use for each game? How would you build it? Go crazy!!!")

boolean = [true, false]

10.times do 
	Assignment.create(assignment_type_id: 1, questions: boolean.sample, teacher_id: 1)
end

[1,2,3,4,5,6,7,8,9,10].each do |id|
	AssignmentStudent.create(assignment_id: id, student_id: id)
	AssignmentStudent.create(assignment_id: id, student_id: id+10)
end





