# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

User.destroy_all
Film.destroy_all
Department.destroy_all
Grant.destroy_all


puts "clean db"

paulh = User.create(email: "paulh@email.com", password: "123123", first_name: "Paul", last_name: "Harrison", skills: "filmmaker")
ftcome = Film.create(title: "From The Corner Of My Eye", synopsis: "A dark, cerebral, supernatural thriller set in a mythic northern wilderness.", genre: "thriller", estimated_release_date: "Mon, 30 Dec 2023")
dirpaul = Department.create(name: "Direction", film_id: "1")
pauldirgrant = Grant.create(rank_level: "Direction", user_id: "1", film_id: "1", department_id: "1")

puts "paul created"

wardrobeftcome = Department.create(name: "Wardrobe", film_id: "1")
cmctask = Task.create(department_id: "2", user_id: "1", title: "Celid Muan Clansmen Costumes", content: "Please send me photos of the latest version of the Celid Muan Clansmen costumes and make-up.", status: "done")
user2 = User.create(email: "ericaharmon@email.com", password: "123123", first_name: "Erica", last_name: "Harmon", skills: "costume designer")
user2grant = Grant.create(rank_level: "Head of department", user_id: "2", film_id: "1", department_id: "2")
cmcsub = Submission.create(task_id: "1", user_id: "2", title: "Celid Muan Clansmen Costumes", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
# ADD IMAGES
puts "CMC task and submission created erica harmon"

postertask = Task.create(department_id: "1", user_id: "1", title: "Make poster", content: "Make poster for film promo.", status: "done")
postersub = Submission.create(task_id: "2", user_id: "1", title: "Film poster", content: "Poster done", status: "approved")
# ADD IMAGES
puts "poster task and submission created"

artftcome = Department.create(name: "Art", film_id: "1")
tenttask = Task.create(department_id: "3", user_id: "1", title: "Tentacle props", content: "Come up with demo props for tentacles.", status: "done")
user3 = User.create(email: "racheltapia@email.com", password: "123123", first_name: "Rachel", last_name: "Tapia", skills: "prop designer")
user3grant = Grant.create(rank_level: "Head of department", user_id: "3", film_id: "1", department_id: "3")
tentsub = Submission.create(task_id: "3", user_id: "3", title: "Tentacles demo", content: "work in progress, le me know what you think", status: "submitted")
# ADD IMAGES
puts "tentacles task and submission created rachel tapia"

actingftcome = Department.create(name: "Acting", film_id: "1")
cocoontask = Task.create(department_id: "4", user_id: "1", title: "Cocoon girl", content: "Could you please upload the photo of the cocoon girl from the shoot?", status: "done")
user4 = User.create(email: "louisbowman@email.com", password: "123123", first_name: "Louis", last_name: "Bowman", skills: "direction assistant")
user4grant = Grant.create(rank_level: "Head of department", user_id: "4", film_id: "1", department_id: "4")
cocoonsub = Submission.create(task_id: "4", user_id: "4", title: "Cocoon girl", content: "Here you go", status: "approved")
# ADD IMAGES
puts "cocoon task and submission created louis bowman"

krekvoldtask = Task.create(department_id: "4", user_id: "1", title: "Dr Krekvold", content: "Could you please upload the photo of Dr Krekvold from the shoot?", status: "done")
krekvoldsub = Submission.create(task_id: "5", user_id: "4", title: "Dr Krekvold", content: "Here it is", status: "approved")
# ADD IMAGES
puts "krekvold task and submission created"

steigertask = Task.create(department_id: "4", user_id: "1", title: "Steiger", content: "Could you please send the photo of Steiger from the shoot?", status: "done")
steigersub = Submission.create(task_id: "6", user_id: "4", title: "Steiger", content: "Steiger frontal shot", status: "approved")
# ADD IMAGES
puts "steiger task and submission created"

sabinetask = Task.create(department_id: "4", user_id: "1", title: "Sabine", content: "Could you please upload a photo of Sabine from the shoot?", status: "done")
sabinesub = Submission.create(task_id: "7", user_id: "4", title: "Sabine", content: "Sabine with cigar", status: "approved")
# ADD IMAGES
puts "sabine task and submission created"

dancetask = Task.create(department_id: "4", user_id: "1", title: "Dance reharsal", content: "Give me an update please", status: "done")
user5 = User.create(email: "scarlettharvey@email.com", password: "123123", first_name: "Scarlett", last_name: "Harvey", skills: "choreographer")
user5grant = Grant.create(rank_level: "Crew member", user_id: "5", film_id: "1", department_id: "4")
sabinesub = Submission.create(task_id: "8", user_id: "5", title: "Dance rehearsal update", content: "Everything is going great, here are a few photos", status: "approved")
# ADD IMAGES
puts "dance rehearsal task and submission created Scarlett Harvey"


culttask = Task.create(department_id: "3", user_id: "1", title: "Cult dance props", content: "What do the costumes for the cult members look like?", status: "done")
cultsub = Submission.create(task_id: "9", user_id: "3", title: "Dancers' costumes", content: "Here are a few photos of the dancers' costumes, what do you think?", status: "submitted")
# ADD IMAGES
puts "cult costumes task and submission created"

classtask = Task.create(department_id: "4", user_id: "1", title: "Classroom photo", content: "Could you please upload a photo of the classroom from the shoot?", status: "done")
classsub = Submission.create(task_id: "10", user_id: "4", title: "Classroom photos", content: "Here are a few photos", status: "approved")
# ADD IMAGES
puts "classroom task and submission created"

foresttask = Task.create(department_id: "4", user_id: "1", title: "Forest photo", content: "Could you please upload photos of the forest shots we did?", status: "to-do")
scene34task = Task.create(department_id: "4", user_id: "1", title: "Scene 34 rehearsal", content: "Please rehearse scene 34 and send me a recording", status: "to-do")
scene56task = Task.create(department_id: "4", user_id: "1", title: "Scene 56 delivery", content: "This scene lacked gravity last time. Please rehearse it adding more intensity.", status: "to-do")
extrastask = Task.create(department_id: "4", user_id: "1", title: "Extras needed", content: "I think we need more extras for the cult scenes, can you sort this out, please?", status: "to-do")
nursetask = Task.create(department_id: "4", user_id: "1", title: "Nurse actress needed", content: "We needed an actress who'll play the nurse", status: "in-progress")

puts "acting to do tasks created"

insttask = Task.create(department_id: "3", user_id: "1", title: "Musical instrument props", content: "We need musical instruments for the Ice Club scenes.", status: "to-do")
classroomtask = Task.create(department_id: "3", user_id: "1", title: "More classroom props", content: "We need more stuff to go in the classroom.", status: "in-progress")
flattask = Task.create(department_id: "3", user_id: "1", title: "Felix's flat", content: "Could you please come up with ideas for Felix's flat?", status: "to-do")
clinictask = Task.create(department_id: "3", user_id: "1", title: "Eye clinic props", content: "We need more props for the eye clinic", status: "to-do")

puts "art to do tasks created"

iceclubcostumestask = Task.create(department_id: "2", user_id: "1", title: "Ice club Costumes", content: "We need costumes for the ice club scenes", status: "to-do")
extrascostumestask = Task.create(department_id: "2", user_id: "1", title: "Extras' Costumes", content: "please come up with more costumes for extras", status: "to-do")

puts "costumes to do tasks created"
