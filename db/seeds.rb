# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
## Create Exams
#
# (1..3).each do |e|
#   Exam = Exam.create(exam_name: "Exam-#{e}")
# end

puts "=======Creating seed data========"
user = User.create(email: "testing@learing.com", password_digest: "password")
gk_exam = Exam.create(exam_name: "GK")
apptitude = Exam.create(exam_name: "Aptitude")



#
##Create Subjects
#
basic_gk = gk_exam.subjects.create(subject_name: "Basic General Knowledge", subject_code: "GK001")
general_sic = gk_exam.subjects.create(subject_name: "General Science", subject_code: "GK002")
ari_app = apptitude.subjects.create(subject_name: "Arithmetic Aptitude", subject_code: "APP001")

#
##Create Topics
#
basicgk_topic1 = basic_gk.topics.create(name: "Tpoic-1", description: Faker::Lorem.paragraph)
generalsic_topic1 = general_sic.topics.create(name: "Tpoic-1", description: Faker::Lorem.paragraph)
generalsic_topic2 = general_sic.topics.create(name: "Tpoic-2", description: Faker::Lorem.paragraph)
ari_app_topic1 = ari_app.topics.create(name: "Tpoic-1", description: Faker::Lorem.paragraph)

#
##Create chapters
#
basicgk_topic1_chap_1 = basicgk_topic1.chapters.create(name: "Chapter-1", description: Faker::Lorem.paragraph) 
generalsic_topic1_chap_1 = generalsic_topic1.chapters.create(name: "Elements and Metals", description: Faker::Lorem.paragraph)
generalsic_topic2_chap_1 = generalsic_topic2.chapters.create(name: "Measurements", description: Faker::Lorem.paragraph)
generalsic_topic2_chap_2 = generalsic_topic2.chapters.create(name: "Nuclear Science", description: Faker::Lorem.paragraph)
ari_app_topic1_chap_1 = ari_app_topic1.chapters.create(name: "Percentage", description: Faker::Lorem.paragraph)
ari_app_topic1_chap_2 = ari_app_topic1.chapters.create(name: "Simplification", description: Faker::Lorem.paragraph)

#
##Create Questions
#
#1)
basicgk_question1 = basicgk_topic1_chap_1.questions.create(question: "Grand Central Terminal, Park Avenue, New York is the world's?", category: 0)
option_a = basicgk_question1.mcq_options.create(option: "largest railway station", is_correct: true)
option_b = basicgk_question1.mcq_options.create(option: "highest railway station")
option_c = basicgk_question1.mcq_options.create(option: "longest railway station")
option_d = basicgk_question1.mcq_options.create(option: "smallest railway station")

#2)
basicgk_question2 = basicgk_topic1_chap_1.questions.create(question: "Garampani sanctuary is located at?", category: 1)
option_a = basicgk_question2.mcq_options.create(option: "Junagarh, Gujarat")
option_b = basicgk_question2.mcq_options.create(option: "Diphu, Assam", is_correct: true)
option_c = basicgk_question2.mcq_options.create(option: "Kohima, Nagaland")
option_d = basicgk_question2.mcq_options.create(option: "Gangtok, Sikkim")

#3)
generalsic_topic1_question1 = generalsic_topic1_chap_1.questions.create(question: "Brass gets discoloured in air because of the presence of which of the following gases in air?", category: 2)
option_a = generalsic_topic1_question1.mcq_options.create(option: "Oxygen")
option_b = generalsic_topic1_question1.mcq_options.create(option: "Hydrogen sulphide", is_correct: true)
option_c = generalsic_topic1_question1.mcq_options.create(option: "Carbon dioxide")
option_d = generalsic_topic1_question1.mcq_options.create(option: "Nitrogen")

#4)
generalsic_topic1_question2 = generalsic_topic1_chap_1.questions.create(question: "Which of the following is a non metal that remains liquid at room temperature?", category: 2)
option_a = generalsic_topic1_question2.mcq_options.create(option: "Phosphorous")
option_b = generalsic_topic1_question2.mcq_options.create(option: "Bromine", is_correct: true)
option_c = generalsic_topic1_question2.mcq_options.create(option: "Chlorine")
option_d = generalsic_topic1_question2.mcq_options.create(option: "Helium")

#5)
generalsic_topic2_chap_1_question1 = generalsic_topic2_chap_1.questions.create(question: "	
  What is the unit for measuring the amplitude of a sound?", category: 0)
option_a = generalsic_topic2_chap_1_question1.mcq_options.create(option: "Decibel", is_correct: true)
option_b = generalsic_topic2_chap_1_question1.mcq_options.create(option: "Coulomb")
option_c = generalsic_topic2_chap_1_question1.mcq_options.create(option: "Hum")
option_d = generalsic_topic2_chap_1_question1.mcq_options.create(option: "Cycles")

#6)
generalsic_topic2_chap_1_question2 = generalsic_topic2_chap_1.questions.create(question: "	
  Reading of a barometer going down is an indication of", category: 2)
option_a = generalsic_topic2_chap_1_question2.mcq_options.create(option: "snow")
option_b = generalsic_topic2_chap_1_question2.mcq_options.create(option: "storm")
option_c = generalsic_topic2_chap_1_question2.mcq_options.create(option: "intense heat")
option_d = generalsic_topic2_chap_1_question2.mcq_options.create(option: "rainfall", is_correct: true)

#7)
generalsic_topic2_chap_2_question1 = generalsic_topic2_chap_2.questions.create(question: "	
  Which of the following is used as a moderator in nuclear reactor?", category: 0)
option_a = generalsic_topic2_chap_2_question1.mcq_options.create(option: "Thorium")
option_b = generalsic_topic2_chap_2_question1.mcq_options.create(option: "Graphite", is_correct: true)
option_c = generalsic_topic2_chap_2_question1.mcq_options.create(option: "Radium")
option_d = generalsic_topic2_chap_2_question1.mcq_options.create(option: "Ordinary water")

#8)
generalsic_topic2_chap_2_question2 = generalsic_topic2_chap_2.questions.create(question: "
Which among the following is a positively charged particle emitted by a radioactive element?", category: 2)
option_a = generalsic_topic2_chap_2_question2.mcq_options.create(option: "Beta ray")
option_b = generalsic_topic2_chap_2_question2.mcq_options.create(option: "Alpha ray", is_correct: true)
option_c = generalsic_topic2_chap_2_question2.mcq_options.create(option: "Cathode ray")
option_d = generalsic_topic2_chap_2_question2.mcq_options.create(option: "Gamma ray")

#9)
ari_app_topic1_chap_1_question1 = ari_app_topic1_chap_1.questions.create(question: "	
  What percentage of numbers from 1 to 70 have 1 or 9 in the unit's digit?", category: 0)
option_a = ari_app_topic1_chap_1_question1.mcq_options.create(option: "1")
option_b = ari_app_topic1_chap_1_question1.mcq_options.create(option: "14")
option_c = ari_app_topic1_chap_1_question1.mcq_options.create(option: "20", is_correct: true)
option_d = ari_app_topic1_chap_1_question1.mcq_options.create(option: "21")

#10)
ari_app_topic1_chap_1_question2 = ari_app_topic1_chap_1.questions.create(question: "Three candidates contested an election and received 1136, 7636 and 11628 votes respectively. What percentage of the total votes did the winning candidate get?", category: 2)
option_a = ari_app_topic1_chap_1_question2.mcq_options.create(option: "57%", is_correct: true)
option_b = ari_app_topic1_chap_1_question2.mcq_options.create(option: "60%")
option_c = ari_app_topic1_chap_1_question2.mcq_options.create(option: "65%")
option_d = ari_app_topic1_chap_1_question2.mcq_options.create(option: "90%")

#11)
ari_app_topic1_chap_2_question1 =ari_app_topic1_chap_2.questions.create(question: "A man has Rs.480 in the denominations of one-rupee notes, five-rupee notes and ten-rupee notes. The number of notes of each denomination is equal. What is the total number of notes that he has ?", category: 0)
option_a = ari_app_topic1_chap_2_question1.mcq_options.create(option: "45")
option_b = ari_app_topic1_chap_2_question1.mcq_options.create(option: "60")
option_c = ari_app_topic1_chap_2_question1.mcq_options.create(option: "75")
option_d = ari_app_topic1_chap_2_question1.mcq_options.create(option: "90", is_correct: true)

#12)
ari_app_topic1_chap_2_question2 = ari_app_topic1_chap_2.questions.create(question: "There are two examinations rooms A and B. If 10 students are sent from A to B, then the number of students in each room is the same. If 20 candidates are sent from B to A, then the number of students in A is double the number of students in B. The number of students in room A is:", category: 2)
option_a = ari_app_topic1_chap_2_question2.mcq_options.create(option: "20")
option_b = ari_app_topic1_chap_2_question2.mcq_options.create(option: "80")
option_c = ari_app_topic1_chap_2_question2.mcq_options.create(option: "100", is_correct: true)
option_d = ari_app_topic1_chap_2_question2.mcq_options.create(option: "200")

#13)
ari_app_topic1_chap_2_question3 =ari_app_topic1_chap_2.questions.create(question: "The price of 10 chairs is equal to that of 4 tables. The price of 15 chairs and 2 tables together is Rs. 4000. The total price of 12 chairs and 3 tables is:", category: 0)
option_a = ari_app_topic1_chap_2_question3.mcq_options.create(option: "Rs. 3500")
option_b = ari_app_topic1_chap_2_question3.mcq_options.create(option: "Rs. 3750")
option_c = ari_app_topic1_chap_2_question3.mcq_options.create(option: "Rs. 3840")
option_d = ari_app_topic1_chap_2_question3.mcq_options.create(option: "Rs. 3900", is_correct: true)

#14)
ari_app_topic1_chap_2_question4 = ari_app_topic1_chap_2.questions.create(question: "A man has some hens and cows. If the number of heads be 48 and the number of feet equals 140, then the number of hens will be:", category: 2)
option_a = ari_app_topic1_chap_2_question4.mcq_options.create(option: "22")
option_b = ari_app_topic1_chap_2_question4.mcq_options.create(option: "23")
option_c = ari_app_topic1_chap_2_question4.mcq_options.create(option: "24")
option_d = ari_app_topic1_chap_2_question4.mcq_options.create(option: "26", is_correct: true)

#15)
ari_app_topic1_chap_2_question5 =ari_app_topic1_chap_2.questions.create(question: "A fires 5 shots to B's 3 but A kills only once in 3 shots while B kills once in 2 shots. When B has missed 27 times, A has killed:", category: 0)
option_a = ari_app_topic1_chap_2_question5.mcq_options.create(option: "30", is_correct: true)
option_b = ari_app_topic1_chap_2_question5.mcq_options.create(option: "60")
option_c = ari_app_topic1_chap_2_question5.mcq_options.create(option: "72")
option_d = ari_app_topic1_chap_2_question5.mcq_options.create(option: "90")

puts "====Seed data created===="