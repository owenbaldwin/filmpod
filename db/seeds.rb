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
Task.destroy_all
Submission.destroy_all
Comment.destroy_all


puts "clean db"

paulh = User.create(email: "paulh@email.com", password: "123123", first_name: "Paul", last_name: "Harrison", skills: "filmmaker")
avatar1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638437207/90186455_m7yiq9.png")
paulh.photo.attach(io: avatar1, filename: '90186455_m7yiq9.png', content_type: 'image/png')
sleep(2)

ftcome = Film.create(title: "From The Corner Of My Eye", synopsis: "A dark, cerebral, supernatural thriller set in a mythic northern wilderness.", genre: "thriller", estimated_release_date: "Mon, 30 Dec 2023")
dirpaul = Department.create(name: "Direction", film_id: ftcome.id)
pauldirgrant = Grant.create(rank_level: "Direction", user_id: paulh.id, film_id: ftcome.id, department_id: dirpaul.id)
sleep(2)
puts "paul created"




wardrobeftcome = Department.create(name: "Wardrobe", film_id: ftcome.id)
cmctask = Task.create(department_id: wardrobeftcome.id, user_id: paulh.id, title: "Celid Muan Clansmen Costumes", content: "Please send me photos of the latest version of the Celid Muan Clansmen costumes and make-up.", status: "done")
user2 = User.create(email: "ericaharmon@email.com", password: "123123", first_name: "Erica", last_name: "Harmon", skills: "costume designer")
avatar2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436329/user2_vycowh.jpg")
user2.photo.attach(io: avatar2, filename: 'user2_vycowh.jpg', content_type: 'image/jpg')

user2grant = Grant.create(rank_level: "Head of department", user_id: user2.id, film_id: ftcome.id, department_id: wardrobeftcome.id)
cmcsub1 = Submission.create(task_id: cmctask.id, user_id: user2.id, title: "Celid Muan Clansmen Costumes 1", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
# ADD IMAGES
cmcsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284592/celid1_h4bd7b.jpg")
cmcsub1.photo.attach(io: cmcsubimage1, filename: 'celid1_h4bd7b.jpg', content_type: 'image/jpg')
sleep(2)

cmcsub2 = Submission.create(task_id: cmctask.id, user_id: user2.id, title: "Celid Muan Clansmen Costumes 2", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
cmcsubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284709/celid2_i5rp2h.jpg")
cmcsub2.photo.attach(io: cmcsubimage2, filename: 'celid2_i5rp2h.jpg', content_type: 'image/jpg')
sleep(2)

cmcsub3 = Submission.create(task_id: cmctask.id, user_id: user2.id, title: "Celid Muan Clansmen Costumes 3", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
cmcsubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284711/celid3_hdv7il.jpg")
cmcsub3.photo.attach(io: cmcsubimage3, filename: 'celid3_hdv7il.jpg', content_type: 'image/jpg')
sleep(2)

puts "CMC task and submission created erica harmon"

postertask = Task.create(department_id: dirpaul.id, user_id: paulh.id, title: "Make poster", content: "Make poster for film promo.", status: "done")
postersub = Submission.create(task_id: postertask.id, user_id: paulh.id, title: "Film poster", content: "Poster done", status: "approved")
# ADD IMAGES
ftcomeposter = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638283765/ftcom_poster_ahsrbw.jpg")
postersub.photo.attach(io: ftcomeposter, filename: 'ftcom_poster_ahsrbw.jpg', content_type: 'image/jpg')
sleep(2)

puts "poster task and submission created"

ftcomephoto = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638283765/ftcom_poster_ahsrbw.jpg")
ftcome.photo.attach(io: ftcomephoto, filename: 'ftcom_poster_ahsrbw.jpg', content_type: 'image/jpg')
puts "film photo added"

artftcome = Department.create(name: "Art", film_id: ftcome.id)
tenttask = Task.create(department_id: artftcome.id, user_id: paulh.id, title: "Tentacle props", content: "Come up with demo props for tentacles.", status: "done")
user3 = User.create(email: "racheltapia@email.com", password: "123123", first_name: "Rachel", last_name: "Tapia", skills: "prop designer")
avatar3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436330/user3_stuzkz.jpg")
user3.photo.attach(io: avatar3, filename: 'user3_stuzkz.jpg', content_type: 'image/jpg')
sleep(2)

user3grant = Grant.create(rank_level: "Head of department", user_id: user3.id, film_id: ftcome.id, department_id: artftcome.id)
tentsub1 = Submission.create(task_id: tenttask.id, user_id: user3.id, title: "Tentacles demo", content: "work in progress, le me know what you think", status: "submitted")
# ADD IMAGES
tentsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286037/119450383_721493288574275_1588571107698869013_n_ar9upw.jpg")
tentsub1.photo.attach(io: tentsubimage1, filename: '119450383_721493288574275_1588571107698869013_n_ar9upw.jpg', content_type: 'image/jpg')
sleep(2)

tentsub2 = Submission.create(task_id: tenttask.id, user_id: user3.id, title: "Celid Muan Clansmen Costumes 2", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
tentubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286037/119438069_721493335240937_6276664193647108521_n_eg2okf.jpg")
tentsub2.photo.attach(io: tentubimage2, filename: '119438069_721493335240937_6276664193647108521_n_eg2okf.jpg', content_type: 'image/jpg')
sleep(2)

tentsub3 = Submission.create(task_id: tenttask.id, user_id: user3.id, title: "Celid Muan Clansmen Costumes 3", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
tentubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286037/119599563_721493198574284_3340065893414468952_n_sejz6o.jpg")
tentsub3.photo.attach(io: tentubimage3, filename: '119599563_721493198574284_3340065893414468952_n_sejz6o.jpg', content_type: 'image/jpg')
sleep(2)

puts "tentacles task and submission created rachel tapia"

actingftcome = Department.create(name: "Acting", film_id: ftcome.id)
cocoontask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Cocoon girl", content: "Could you please upload the photo of the cocoon girl from the shoot?", status: "done")
user4 = User.create(email: "louisbowman@email.com", password: "123123", first_name: "Louis", last_name: "Bowman", skills: "direction assistant")
avatar4 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436331/user4_idgual.jpg")
user4.photo.attach(io: avatar4, filename: 'user4_idgual.jpg', content_type: 'image/jpg')
sleep(2)

user4grant = Grant.create(rank_level: "Head of department", user_id: user4.id, film_id: ftcome.id, department_id: actingftcome.id)
cocoonsub = Submission.create(task_id: cocoontask.id, user_id: user4.id, title: "Cocoon girl", content: "Here you go", status: "approved")
# ADD IMAGES
cocoonsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286193/cocoon_ul88m5.jpg")
cocoonsub.photo.attach(io: cocoonsubimage1, filename: 'cocoon_ul88m5.jpg', content_type: 'image/jpg')
sleep(2)

puts "cocoon task and submission created louis bowman"

krekvoldtask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Dr Krekvold", content: "Could you please upload the photo of Dr Krekvold from the shoot?", status: "done")
krekvoldsub = Submission.create(task_id: krekvoldtask.id, user_id: user4.id, title: "Dr Krekvold", content: "Here it is", status: "approved")
# ADD IMAGES
kreksubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638286289/krek_dlhcyx.jpg")
krekvoldsub.photo.attach(io: kreksubimage1, filename: 'krek_dlhcyx.jpg', content_type: 'image/jpg')
sleep(2)

puts "krekvold task and submission created"

steigertask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Steiger", content: "Could you please send the photo of Steiger from the shoot?", status: "done")
steigersub = Submission.create(task_id: steigertask.id, user_id: user4.id, title: "Steiger", content: "Steiger frontal shot", status: "approved")
# ADD IMAGES
steigsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287587/142773436_811686182888318_7231773880283480605_n_qzx9vg.jpg")
steigersub.photo.attach(io: steigsubimage1, filename: '142773436_811686182888318_7231773880283480605_n_qzx9vg.jpg', content_type: 'image/jpg')
sleep(2)
puts "steiger task and submission created"

sabinetask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Sabine", content: "Could you please upload a photo of Sabine from the shoot?", status: "done")
sabinesub = Submission.create(task_id: sabinetask.id, user_id: user4.id, title: "Sabine", content: "Sabine with cigar", status: "approved")
# ADD IMAGES
sabsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287641/sabinesmoke_djvija.jpg")
sabinesub.photo.attach(io: sabsubimage1, filename: 'sabinesmoke_djvija.jpg', content_type: 'image/jpg')
sleep(2)
puts "sabine task and submission created"

dancetask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Dance reharsal", content: "Give me an update please", status: "done")
user5 = User.create(email: "scarlettharvey@email.com", password: "123123", first_name: "Scarlett", last_name: "Harvey", skills: "choreographer")
avatar5 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436333/user5_ouhf8g.jpg")
user5.photo.attach(io: avatar5, filename: 'user5_ouhf8g.jpg', content_type: 'image/jpg')
sleep(2)

user5grant = Grant.create(rank_level: "Crew member", user_id: user5.id, film_id: ftcome.id, department_id: actingftcome.id)
dancerhrsl1 = Submission.create(task_id: dancetask.id, user_id: user5.id, title: "Dance rehearsal update 1", content: "Everything is going great, here are a few photos", status: "approved")
# ADD IMAGES
dancesubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287844/dancerh2_l45pnu.jpg")
dancerhrsl1.photo.attach(io: dancesubimage1, filename: 'dancerh2_l45pnu.jpg', content_type: 'image/jpg')
sleep(2)

dancerhrsl2 = Submission.create(task_id: dancetask.id, user_id: user5.id, title: "Dance rehearsal update 2", content: "Everything is going great, here are a few photos", status: "approved")
dancesubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287845/dancerh1_imbzz5.jpg")
dancerhrsl2.photo.attach(io: dancesubimage2, filename: 'dancerh1_imbzz5.jpg', content_type: 'image/jpg')
sleep(2)

dancerhrsl3 = Submission.create(task_id: dancetask.id, user_id: user5.id, title: "Dance rehearsal update 3", content: "Everything is going great, here are a few photos", status: "approved")
dancesubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638287845/dancerh3_hvbdcb.jpg")
dancerhrsl3.photo.attach(io: dancesubimage3, filename: 'dancerh3_hvbdcb.jpg', content_type: 'image/jpg')
sleep(2)

puts "dance rehearsal task and submission created Scarlett Harvey"


culttask = Task.create(department_id: wardrobeftcome.id, user_id: paulh.id, title: "Cult dance props", content: "What do the costumes for the cult members look like?", status: "done")
cultsub1 = Submission.create(task_id: culttask.id, user_id: user3.id, title: "Dancers' costumes 1", content: "Here are a few photos of the dancers' costumes, what do you think?", status: "submitted")
# ADD IMAGES
cultsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288165/cult2_o3xkij.jpg")
cultsub1.photo.attach(io: cultsubimage1, filename: 'cult2_o3xkij.jpg', content_type: 'image/jpg')
sleep(2)

cultsub2 = Submission.create(task_id: culttask.id, user_id: user3.id, title: "Dancers' costumes 1", content: "Here are a few photos of the dancers' costumes, what do you think?", status: "submitted")
cultsubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288167/cult1_eicngx.jpg")
cultsub2.photo.attach(io: cultsubimage2, filename: 'cult1_eicngx.jpg', content_type: 'image/jpg')
sleep(2)

cultsub3 = Submission.create(task_id: culttask.id, user_id: user3.id, title: "Dancers' costumes 1", content: "Here are a few photos of the dancers' costumes, what do you think?", status: "submitted")
cultsubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288172/cult3_vylcok.jpg")
cultsub3.photo.attach(io: cultsubimage3, filename: 'cult3_vylcok.jpg', content_type: 'image/jpg')
sleep(2)
puts "cult costumes task and submission created"

classtask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Classroom photo", content: "Could you please upload a photo of the classroom from the shoot?", status: "done")
classsub1 = Submission.create(task_id: classtask.id, user_id: user4.id, title: "Classroom photos", content: "Here are a few photos", status: "approved")
# ADD IMAGES
classsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class1_jzefdm.jpg")
classsub1.photo.attach(io: classsubimage1, filename: 'class1_jzefdm.jpg', content_type: 'image/jpg')
sleep(2)

classsub2 = Submission.create(task_id: classtask.id, user_id: user4.id, title: "Classroom photos", content: "Here are a few photos", status: "approved")
classsubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class2_zr71me.jpg")
classsub2.photo.attach(io: classsubimage2, filename: 'class2_zr71me.jpg', content_type: 'image/jpg')
sleep(2)

classsub3 = Submission.create(task_id: classtask.id, user_id: user4.id, title: "Classroom photos", content: "Here are a few photos", status: "approved")
classsubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class3_s5gppk.jpg")
classsub3.photo.attach(io: classsubimage3, filename: 'class3_s5gppk.jpg', content_type: 'image/jpg')
sleep(2)

classsub4 = Submission.create(task_id: classtask.id, user_id: user4.id, title: "Classroom photos", content: "Here are a few photos", status: "approved")
classsubimage4 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class4_pi2kbe.jpg")
classsub4.photo.attach(io: classsubimage4, filename: 'class4_pi2kbe.jpg', content_type: 'image/jpg')
sleep(2)

classsub5 = Submission.create(task_id: classtask.id, user_id: user4.id, title: "Classroom photos", content: "Here are a few photos", status: "approved")
classsubimage5 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638288587/class5_i15pbl.jpg")
classsub5.photo.attach(io: classsubimage5, filename: 'class5_i15pbl.jpg', content_type: 'image/jpg')
sleep(2)
puts "classroom task and submission created"

foresttask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Forest photo", content: "Could you please upload photos of the forest shots we did?", status: "to-do")
scene34task = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Scene 34 rehearsal", content: "Please rehearse scene 34 and send me a recording", status: "to-do")
scene56task = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Scene 56 delivery", content: "This scene lacked gravity last time. Please rehearse it adding more intensity.", status: "to-do")
extrastask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Extras needed", content: "I think we need more extras for the cult scenes, can you sort this out, please?", status: "to-do")
nursetask = Task.create(department_id: actingftcome.id, user_id: paulh.id, title: "Nurse actress needed", content: "We needed an actress who'll play the nurse", status: "in-progress")

puts "acting to do tasks created"

insttask = Task.create(department_id: "3", user_id: paulh.id, title: "Musical instrument props", content: "We need musical instruments for the Ice Club scenes.", status: "to-do")
classroomtask = Task.create(department_id: "3", user_id: paulh.id, title: "More classroom props", content: "We need more stuff to go in the classroom.", status: "in-progress")
flattask = Task.create(department_id: "3", user_id: paulh.id, title: "Felix's flat", content: "Could you please come up with ideas for Felix's flat?", status: "to-do")
clinictask = Task.create(department_id: "3", user_id: paulh.id, title: "Eye clinic props", content: "We need more props for the eye clinic", status: "to-do")

puts "art to do tasks created"

iceclubcostumestask = Task.create(department_id: wardrobeftcome.id, user_id: paulh.id, title: "Ice club Costumes", content: "We need costumes for the ice club scenes", status: "to-do")
extrascostumestask = Task.create(department_id: wardrobeftcome.id, user_id: paulh.id, title: "Extras' Costumes", content: "please come up with more costumes for extras", status: "to-do")

puts "costumes to do tasks created"

# jcameron =

user6 = User.create(email: "floydbenson@email.com", password: "123123", first_name: "Floyd", last_name: "Benson", skills: "Actor")
avatar6 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436328/user6_enqiis.jpg")
user6.photo.attach(io: avatar6, filename: 'user6_enqiis.jpg', content_type: 'image/jpg')

user6grant = Grant.create(rank_level: "Crew member", user_id: user6.id, film_id: ftcome.id, department_id: actingftcome.id)
sleep(2)

user7 = User.create(email: "benirwin@email.com", password: "123123", first_name: "Ben", last_name: "Irwin", skills: "Actor")
avatar7 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436342/user7_kz63ig.jpg")
user7.photo.attach(io: avatar7, filename: 'user7_kz63ig.jpg', content_type: 'image/jpg')

user7grant = Grant.create(rank_level: "Crew member", user_id: user7.id, film_id: ftcome.id, department_id: actingftcome.id)
sleep(2)

user8 = User.create(email: "aprilbarnett@email.com", password: "123123", first_name: "April", last_name: "Barnett", skills: "Actor")
avatar8 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436329/user8_sjp4y2.jpg")
user8.photo.attach(io: avatar8, filename: 'user8_sjp4y2.jpg', content_type: 'image/jpg')

user8grant = Grant.create(rank_level: "Crew member", user_id: user8.id, film_id: ftcome.id, department_id: actingftcome.id)
sleep(2)

user9 = User.create(email: "noraberry@email.com", password: "123123", first_name: "Nora", last_name: "Berry", skills: "Costume designer")
avatar9 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436341/user9_pkwohy.jpg")
user9.photo.attach(io: avatar9, filename: 'user9_pkwohy.jpg', content_type: 'image/jpg')

user9grant = Grant.create(rank_level: "Crew member", user_id: user9.id, film_id: ftcome.id, department_id: wardrobeftcome.id)
sleep(2)

user10 = User.create(email: "leonaeverett@email.com", password: "123123", first_name: "Leona", last_name: "Everett", skills: "Prop designer")
avatar10 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436348/user10_vudpsq.jpg")
user10.photo.attach(io: avatar10, filename: 'user10_vudpsq.jpg', content_type: 'image/jpg')

user10grant = Grant.create(rank_level: "Crew member", user_id: user10.id, film_id: ftcome.id, department_id: artftcome.id)
sleep(2)

user11 = User.create(email: "royheath@email.com", password: "123123", first_name: "Roy", last_name: "Heath", skills: "Carpenter")
avatar11 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436342/user11_xrst2a.jpg")
user11.photo.attach(io: avatar11, filename: 'user11_xrst2a.jpg', content_type: 'image/jpg')

user11grant = Grant.create(rank_level: "Crew member", user_id: user11.id, film_id: ftcome.id, department_id: artftcome.id)
sleep(2)


prodftcome = Department.create(name: "Production", film_id: ftcome.id)

user12 = User.create(email: "matthewfreeman@email.com", password: "123123", first_name: "Matthew", last_name: "Freeman", skills: "Producer")
avatar12 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436344/user12_zvmtey.jpg")
user12.photo.attach(io: avatar12, filename: 'user12_zvmtey.jpg', content_type: 'image/jpg')

user12grant = Grant.create(rank_level: "Direction", user_id: user12.id, film_id: ftcome.id, department_id: prodftcome.id)
sleep(2)

user13 = User.create(email: "abbygreene@email.com", password: "123123", first_name: "Abby", last_name: "Greene", skills: "Producer")
avatar13 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436342/user13_eoyqx0.jpg")
user13.photo.attach(io: avatar13, filename: 'user13_eoyqx0.jpg', content_type: 'image/jpg')

user13grant = Grant.create(rank_level: "Direction", user_id: user13.id, film_id: ftcome.id, department_id: prodftcome.id)
sleep(2)

cameraftcome = Department.create(name: "Camera", film_id: ftcome.id)

user14 = User.create(email: "velmagriffin@email.com", password: "123123", first_name: "Velma", last_name: "Griffin", skills: "Director of photography")
avatar14 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436344/user14_mek2v4.jpg")
user14.photo.attach(io: avatar14, filename: 'user14_mek2v4.jpg', content_type: 'image/jpg')

user14grant = Grant.create(rank_level: "Head of department", user_id: user14.id, film_id: ftcome.id, department_id: cameraftcome.id)
sleep(2)

puts "bunch of crew member created"

user15 = User.create(email: "lrobbins@gmail.com", password: "123123", first_name: "Louis", last_name: "Robbins", skills: "Actor")
avatar15 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638437047/user15_isbzhm.jpg")
user15.photo.attach(io: avatar15, filename: 'user15_isbzhm.jpg', content_type: 'image/jpg')
sleep(2)

puts "louis created"

user16 = User.create(email: "johnmay@gmail.com", password: "123123", first_name: "John", last_name: "May", skills: "Director")
avatar16 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436342/user16_vxfacf.jpg")
user16.photo.attach(io: avatar16, filename: 'user16_vxfacf.jpg', content_type: 'image/jpg')
sleep(2)

btflday = Film.create(title: "Moody Days", synopsis: "A funny romance.", genre: "Comedy", estimated_release_date: "Mon, 30 Dec 2023")
dirjohn = Department.create(name: "Direction", film_id: btflday.id)
johndirgrant = Grant.create(rank_level: "Direction", user_id: user16.id, film_id: btflday.id, department_id: dirjohn.id)
dayphoto = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/w_1000,ar_16:9,c_fill,g_auto,e_sharpen/v1638439338/winter-1358373-1917x524_i9ya00.jpg")
btflday.photo.attach(io: dayphoto, filename: 'winter-1358373-1917x524_i9ya00.jpg', content_type: 'image/jpg')

paulprodgrant = Grant.create(rank_level: "Direction", user_id: user16.id, film_id: btflday.id, department_id: dirjohn.id)

puts "beautiful days film created"

cmctask = Task.create(department_id: wardrobeftcome.id, user_id: paulh.id, title: "Celid Muan Clansmen Costumes", content: "Please send me photos of the latest version of the Celid Muan Clansmen costumes and make-up.", status: "done")
user2 = User.create(email: "ericaharmon@email.com", password: "123123", first_name: "Erica", last_name: "Harmon", skills: "costume designer")
avatar2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638436329/user2_vycowh.jpg")
user2.photo.attach(io: avatar2, filename: 'user2_vycowh.jpg', content_type: 'image/jpg')

user2grant = Grant.create(rank_level: "Head of department", user_id: user2.id, film_id: ftcome.id, department_id: wardrobeftcome.id)
cmcsub1 = Submission.create(task_id: cmctask.id, user_id: user2.id, title: "Celid Muan Clansmen Costumes 1", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
# ADD IMAGES
cmcsubimage1 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284592/celid1_h4bd7b.jpg")
cmcsub1.photo.attach(io: cmcsubimage1, filename: 'celid1_h4bd7b.jpg', content_type: 'image/jpg')
sleep(2)

cmcsub2 = Submission.create(task_id: cmctask.id, user_id: user2.id, title: "Celid Muan Clansmen Costumes 2", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
cmcsubimage2 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284709/celid2_i5rp2h.jpg")
cmcsub2.photo.attach(io: cmcsubimage2, filename: 'celid2_i5rp2h.jpg', content_type: 'image/jpg')
sleep(2)

cmcsub3 = Submission.create(task_id: cmctask.id, user_id: user2.id, title: "Celid Muan Clansmen Costumes 3", content: "Here are the photos of the clansmen in their costumes and make-up, let me know what you think.", status: "approved")
cmcsubimage3 = URI.open("https://res.cloudinary.com/dpr9f2iyl/image/upload/v1638284711/celid3_hdv7il.jpg")
cmcsub3.photo.attach(io: cmcsubimage3, filename: 'celid3_hdv7il.jpg', content_type: 'image/jpg')
sleep(2)
