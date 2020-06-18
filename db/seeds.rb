# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(
  given_name: 'James',
  family_name: 'Devereux',
  email: 'devereuxjj@gmail.com',
  password: 'secret'
)


course = Course.create(
  name: 'Eigo Core AI',
  school: 'Waseda University',
  user: user
)

test = Test.create(
  name: 'Week 1 Quiz',
  course: course
)