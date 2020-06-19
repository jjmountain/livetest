# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Choice.destroy_all
Question.destroy_all
Test.destroy_all
Course.destroy_all
User.destroy_all


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

question_1 = Question.create(
  content: 'How many countries does the UK have?',
  test: test
)

question_1_1 = Choice.create(
  question: question_1,
  content: '1'
)

question_1_2 = Choice.create(
  question: question_1,
  content: '2'
)

question_1_3 = Choice.create(
  question: question_1,
  content: '3'
)

question_1_4 = Choice.create(
  question: question_1,
  content: '4',
  correct: true
)

question_2 = Question.create(
  content: 'What is the capital of England?',
  test: Test.first
)

question_2_1 = Choice.create(
  question: question_2,
  content: 'London',
  correct: true
)

question_2_2 = Choice.create(
  question: question_2,
  content: 'Paris'
)

question_2_3 = Choice.create(
  question: question_2,
  content: 'Berlin'
)

question_2_4 = Choice.create(
  question: question_2,
  content: 'Stockolm'
)
