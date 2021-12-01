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
cmcsub1 = Submission.create(task_id: "1", user_id: "2", title: "Celid Muan Clansmen Costumes 1", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
# ADD IMAGES
cmcsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284592/celid1_h4bd7b.jpg")
cmcsub1.photo.attach(io: cmcsubimage1, filename: 'celid1_h4bd7b.jpg', content_type: 'image/jpg')
sleep(2)

cmcsub2 = Submission.create(task_id: "1", user_id: "2", title: "Celid Muan Clansmen Costumes 2", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
cmcsubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284709/celid2_i5rp2h.jpg")
cmcsub2.photo.attach(io: cmcsubimage2, filename: 'celid2_i5rp2h.jpg', content_type: 'image/jpg')
sleep(2)

cmcsub3 = Submission.create(task_id: "1", user_id: "2", title: "Celid Muan Clansmen Costumes 3", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
cmcsubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284711/celid3_hdv7il.jpg")
cmcsub3.photo.attach(io: cmcsubimage3, filename: 'celid3_hdv7il.jpg', content_type: 'image/jpg')
sleep(2)

puts "CMC task and submission created erica harmon"

postertask = Task.create(department_id: "1", user_id: "1", title: "Make poster", content: "Make poster for film promo.", status: "done")
postersub = Submission.create(task_id: "2", user_id: "1", title: "Film poster", content: "Poster done", status: "approved")
# ADD IMAGES
ftcomeposter = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638283765/ftcom_poster_ahsrbw.jpg")
postersub.photo.attach(io: ftcomeposter, filename: 'ftcom_poster_ahsrbw.jpg', content_type: 'image/jpg')
# ftcome.photo.attach(io: ftcomeposter, filename: 'ftcom_poster_ahsrbw.jpg', content_type: 'image/jpg')
sleep(2)

puts "poster task and submission created"

artftcome = Department.create(name: "Art", film_id: "1")
tenttask = Task.create(department_id: "3", user_id: "1", title: "Tentacle props", content: "Come up with demo props for tentacles.", status: "done")
user3 = User.create(email: "racheltapia@email.com", password: "123123", first_name: "Rachel", last_name: "Tapia", skills: "prop designer")
user3grant = Grant.create(rank_level: "Head of department", user_id: "3", film_id: "1", department_id: "3")
tentsub1 = Submission.create(task_id: "3", user_id: "3", title: "Tentacles demo", content: "work in progress, le me know what you think", status: "submitted")
# ADD IMAGES
tentsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286037/119450383_721493288574275_1588571107698869013_n_ar9upw.jpg")
tentsub1.photo.attach(io: tentsubimage1, filename: '119450383_721493288574275_1588571107698869013_n_ar9upw.jpg', content_type: 'image/jpg')
sleep(2)

tentsub2 = Submission.create(task_id: "1", user_id: "2", title: "Celid Muan Clansmen Costumes 2", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
tentubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286037/119438069_721493335240937_6276664193647108521_n_eg2okf.jpg")
tentsub2.photo.attach(io: tentubimage2, filename: '119438069_721493335240937_6276664193647108521_n_eg2okf.jpg', content_type: 'image/jpg')
sleep(2)

tentsub3 = Submission.create(task_id: "1", user_id: "2", title: "Celid Muan Clansmen Costumes 3", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
tentubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286037/119599563_721493198574284_3340065893414468952_n_sejz6o.jpg")
tentsub3.photo.attach(io: tentubimage3, filename: '119599563_721493198574284_3340065893414468952_n_sejz6o.jpg', content_type: 'image/jpg')
sleep(2)

puts "tentacles task and submission created rachel tapia"

actingftcome = Department.create(name: "Acting", film_id: "1")
cocoontask = Task.create(department_id: "4", user_id: "1", title: "Cocoon girl", content: "Could you please upload the photo of the cocoon girl from the shoot?", status: "done")
user4 = User.create(email: "louisbowman@email.com", password: "123123", first_name: "Louis", last_name: "Bowman", skills: "direction assistant")
user4grant = Grant.create(rank_level: "Head of department", user_id: "4", film_id: "1", department_id: "4")
cocoonsub = Submission.create(task_id: "4", user_id: "4", title: "Cocoon girl", content: "Here you go", status: "approved")
# ADD IMAGES
cocoonsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286193/cocoon_ul88m5.jpg")
cocoonsub.photo.attach(io: cocoonsubimage1, filename: 'cocoon_ul88m5.jpg', content_type: 'image/jpg')
sleep(2)

puts "cocoon task and submission created louis bowman"

krekvoldtask = Task.create(department_id: "4", user_id: "1", title: "Dr Krekvold", content: "Could you please upload the photo of Dr Krekvold from the shoot?", status: "done")
krekvoldsub = Submission.create(task_id: "5", user_id: "4", title: "Dr Krekvold", content: "Here it is", status: "approved")
# ADD IMAGES
kreksubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286289/krek_dlhcyx.jpg")
krekvoldsub.photo.attach(io: kreksubimage1, filename: 'krek_dlhcyx.jpg', content_type: 'image/jpg')
sleep(2)

puts "krekvold task and submission created"

steigertask = Task.create(department_id: "4", user_id: "1", title: "Steiger", content: "Could you please send the photo of Steiger from the shoot?", status: "done")
steigersub = Submission.create(task_id: "6", user_id: "4", title: "Steiger", content: "Steiger frontal shot", status: "approved")
# ADD IMAGES
steigsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287587/142773436_811686182888318_7231773880283480605_n_qzx9vg.jpg")
steigersub.photo.attach(io: steigsubimage1, filename: '142773436_811686182888318_7231773880283480605_n_qzx9vg.jpg', content_type: 'image/jpg')
sleep(2)
puts "steiger task and submission created"

sabinetask = Task.create(department_id: "4", user_id: "1", title: "Sabine", content: "Could you please upload a photo of Sabine from the shoot?", status: "done")
sabinesub = Submission.create(task_id: "7", user_id: "4", title: "Sabine", content: "Sabine with cigar", status: "approved")
# ADD IMAGES
sabsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287641/sabinesmoke_djvija.jpg")
sabinesub.photo.attach(io: sabsubimage1, filename: 'sabinesmoke_djvija.jpg', content_type: 'image/jpg')
sleep(2)
puts "sabine task and submission created"

dancetask = Task.create(department_id: "4", user_id: "1", title: "Dance reharsal", content: "Give me an update please", status: "done")
user5 = User.create(email: "scarlettharvey@email.com", password: "123123", first_name: "Scarlett", last_name: "Harvey", skills: "choreographer")
user5grant = Grant.create(rank_level: "Crew member", user_id: "5", film_id: "1", department_id: "4")
dancerhrsl1 = Submission.create(task_id: "8", user_id: "5", title: "Dance rehearsal update 1", content: "Everything is going great, here are a few photos", status: "approved")
# ADD IMAGES
dancesubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287844/dancerh2_l45pnu.jpg")
dancerhrsl1.photo.attach(io: dancesubimage1, filename: 'dancerh2_l45pnu.jpg', content_type: 'image/jpg')
sleep(2)

dancerhrsl2 = Submission.create(task_id: "8", user_id: "5", title: "Dance rehearsal update 2", content: "Everything is going great, here are a few photos", status: "approved")
dancesubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287845/dancerh1_imbzz5.jpg")
dancerhrsl2.photo.attach(io: dancesubimage2, filename: 'dancerh1_imbzz5.jpg', content_type: 'image/jpg')
sleep(2)

dancerhrsl3 = Submission.create(task_id: "8", user_id: "5", title: "Dance rehearsal update 3", content: "Everything is going great, here are a few photos", status: "approved")
dancesubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287845/dancerh3_hvbdcb.jpg")
dancerhrsl3.photo.attach(io: dancesubimage3, filename: 'dancerh3_hvbdcb.jpg', content_type: 'image/jpg')
sleep(2)

puts "dance rehearsal task and submission created Scarlett Harvey"


culttask = Task.create(department_id: "2", user_id: "1", title: "Cult dance props", content: "What do the costumes for the cult members look like?", status: "done")
cultsub1 = Submission.create(task_id: "9", user_id: "3", title: "Dancers' costumes 1", content: "Here are a few photos of the dancers' costumes, what do you think?", status: "submitted")
# ADD IMAGES
cultsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288165/cult2_o3xkij.jpg")
cultsub1.photo.attach(io: cultsubimage1, filename: 'cult2_o3xkij.jpg', content_type: 'image/jpg')
sleep(2)

cultsub2 = Submission.create(task_id: "9", user_id: "3", title: "Dancers' costumes 1", content: "Here are a few photos of the dancers' costumes, what do you think?", status: "submitted")
cultsubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288167/cult1_eicngx.jpg")
cultsub2.photo.attach(io: cultsubimage2, filename: 'cult1_eicngx.jpg', content_type: 'image/jpg')
sleep(2)

cultsub3 = Submission.create(task_id: "9", user_id: "3", title: "Dancers' costumes 1", content: "Here are a few photos of the dancers' costumes, what do you think?", status: "submitted")
cultsubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288172/cult3_vylcok.jpg")
cultsub3.photo.attach(io: cultsubimage3, filename: 'cult3_vylcok.jpg', content_type: 'image/jpg')
sleep(2)
puts "cult costumes task and submission created"

classtask = Task.create(department_id: "4", user_id: "1", title: "Classroom photo", content: "Could you please upload a photo of the classroom from the shoot?", status: "done")
classsub1 = Submission.create(task_id: "10", user_id: "4", title: "Classroom photos", content: "Here are a few photos", status: "approved")
# ADD IMAGES
classsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class1_jzefdm.jpg")
classsub1.photo.attach(io: classsubimage1, filename: 'class1_jzefdm.jpg', content_type: 'image/jpg')
sleep(2)

classsub2 = Submission.create(task_id: "10", user_id: "4", title: "Classroom photos", content: "Here are a few photos", status: "approved")
classsubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class2_zr71me.jpg")
classsub2.photo.attach(io: classsubimage2, filename: 'class2_zr71me.jpg', content_type: 'image/jpg')
sleep(2)

classsub3 = Submission.create(task_id: "10", user_id: "4", title: "Classroom photos", content: "Here are a few photos", status: "approved")
classsubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class3_s5gppk.jpg")
classsub3.photo.attach(io: classsubimage3, filename: 'class3_s5gppk.jpg', content_type: 'image/jpg')
sleep(2)

classsub4 = Submission.create(task_id: "10", user_id: "4", title: "Classroom photos", content: "Here are a few photos", status: "approved")
classsubimage4 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class4_pi2kbe.jpg")
classsub4.photo.attach(io: classsubimage4, filename: 'class4_pi2kbe.jpg', content_type: 'image/jpg')
sleep(2)

classsub5 = Submission.create(task_id: "10", user_id: "4", title: "Classroom photos", content: "Here are a few photos", status: "approved")
classsubimage5 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class5_i15pbl.jpg")
classsub5.photo.attach(io: classsubimage5, filename: 'class5_i15pbl.jpg', content_type: 'image/jpg')
sleep(2)
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

# jcameron =

user6 = User.create(email: "floydbenson@email.com", password: "123123", first_name: "Floyd", last_name: "Benson", skills: "Actor")
user6grant = Grant.create(rank_level: "Crew member", user_id: "6", film_id: "1", department_id: "4")

user7 = User.create(email: "benirwin@email.com", password: "123123", first_name: "Ben", last_name: "Irwin", skills: "Actor")
user7grant = Grant.create(rank_level: "Crew member", user_id: "7", film_id: "1", department_id: "4")

user8 = User.create(email: "aprilbarnett@email.com", password: "123123", first_name: "April", last_name: "Barnett", skills: "Actor")
user8grant = Grant.create(rank_level: "Crew member", user_id: "8", film_id: "1", department_id: "4")

user9 = User.create(email: "noraberry@email.com", password: "123123", first_name: "Nora", last_name: "Berry", skills: "Costume designer")
user9grant = Grant.create(rank_level: "Crew member", user_id: "9", film_id: "1", department_id: "2")

user10 = User.create(email: "leonaeverett@email.com", password: "123123", first_name: "Leona", last_name: "Everett", skills: "Prop designer")
user10grant = Grant.create(rank_level: "Crew member", user_id: "10", film_id: "1", department_id: "3")

user11 = User.create(email: "royheath@email.com", password: "123123", first_name: "Roy", last_name: "Heath", skills: "Carpenter")
user11grant = Grant.create(rank_level: "Crew member", user_id: "11", film_id: "1", department_id: "3")


prodftcome = Department.create(name: "Production", film_id: "1")

user12 = User.create(email: "matthewfreeman@email.com", password: "123123", first_name: "Matthew", last_name: "Freeman", skills: "Producer")
user12grant = Grant.create(rank_level: "Direction", user_id: "12", film_id: "1", department_id: "5")

user13 = User.create(email: "abbygreene@email.com", password: "123123", first_name: "Abby", last_name: "Greene", skills: "Producer")
user13grant = Grant.create(rank_level: "Direction", user_id: "13", film_id: "1", department_id: "5")

cameraftcome = Department.create(name: "Camera", film_id: "1")

user14 = User.create(email: "velmagriffin@email.com", password: "123123", first_name: "Velma", last_name: "Griffin", skills: "Director of photography")
user14grant = Grant.create(rank_level: "Head of department", user_id: "14", film_id: "1", department_id: "6")

puts "bunch of crew member created"

user15 = User.create(email: "lrobbins@gmail.com", password: "123123", first_name: "Louis", last_name: "Robbins", skills: "Sound Engineer")
