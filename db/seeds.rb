# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

puts 'cleaning database'
Staff.destroy_all
Blog.destroy_all
puts 'Database cleaned.'
puts 'Creating new staff member.'

deep = Staff.new({
  f_name: 'Deep',
  l_name: 'Biswas',
  job_title: 'Founder',
  bio: "Debdipto (Deep) Biswas was born in London to immigrant parents, and grew up as a third-culture kid speaking Bengali at home.\n
  
  He has worked in a series of international development/policy roles in both the public and private sectors for organisations such as the Foreign and Commonwealth Office (FCO), Dalberg Global Development Advisors and the Department for International Development (DFID). His experience covers the UK, Switzerland, Uganda, Nigeria, Tunisia, Sudan and as a diplomat in Tanzania, where he was the youngest in the whole High Commission.\n
  
  Amongst the range of thematic areas his experience covers, notable ones include International Trade, International Finance Institutions, Sustainble Private Sector Growth and Agri-Business.\n\n

  He holds a BA (Hons) Philosophy, Politics and Economics (PPE) from the University of Warwick and an MPhil in Development Studies from the University of Cambridge, Jesus College, where he achieved the PhD threshold in all his modules.",
  email: 'deepbiswas@hotmail.com',
  phone: '0783635246'
})
deep_pic = URI.open("https://res.cloudinary.com/dhoxwyrvn/image/upload/v1603417675/20190713_145510-1_gqclug.jpg")
deep.image.attach(io: deep_pic, filename: "deep_pic.jpg", content_type: "image/jpg")
deep.save!

lu = Staff.new({
  f_name: 'Lyubomir',
  l_name: 'Dias',
  job_title: 'Software Engineer & Tech Lead',
  bio: "Lu graduated from Le Wagon in September 2020 - it was ranked the world's number 1 coding bootcamp during his studies. He had been programming for many months prior to undergoing his intense training. Lu's forte is front-end web development, but he brings a wider range of skills as a full-stack software engineer.
  
  Lu has worked and continues to work in a variety of client-facing jobs including in fitness and transportation.",
  email: 'lyubomirdias@gmail.com',
  phone: '0757635246'
})
lu_pic = URI.open("https://res.cloudinary.com/dhoxwyrvn/image/upload/v1603849114/Lu_Dias_2_pwpjlv.jpg")
lu.image.attach(io: lu_pic, filename: "lu_pic.jpg", content_type: "image/jpg")
lu.save!

puts "seeding is finished"

blog1 = Blog.new({
  header: 'This is a new blog',
  sub_header: 'its about social impact blog',
  content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit, distinctio, officia beatae qui aspernatur voluptatibus libero rerum et voluptate, necessitatibus vitae sunt ipsam reprehenderit tempore, possimus. Saepe quae sint repellendus labore esse similique corporis, a perferendis. Necessitatibus totam voluptatum neque, nihil enim ab unde sint repudiandae veritatis explicabo sit, quae culpa libero tempora excepturi maiores rerum consectetur amet suscipit atque laboriosam quisquam deserunt ut omnis. Repellendus rerum corrupti dolorum itaque doloribus qui excepturi voluptas eveniet esse harum, ducimus cum dignissimos, aperiam et error necessitatibus nam assumenda, porro modi obcaecati ipsam aliquid. Incidunt, officia magnam cum neque laboriosam sunt nesciunt. Pariatur repellendus vel aspernatur dolores maxime nesciunt dolore, quisquam quaerat voluptates ratione culpa sequi harum necessitatibus illum in doloremque expedita alias laboriosam perspiciatis! Perferendis possimus eum cupiditate earum natus dolore necessitatibus assumenda nostrum quam. Corporis exercitationem, optio culpa nam, saepe repellat quasi recusandae ad delectus pariatur praesentium autem natus, esse adipisci.',
  author: 'Deep Biswas',
  author_info: 'Specialist in social impact with over 10 years experiance.',
  hashtags: 'Social Impact / Blog / Testing'
})
blog1.save!

blog2 = Blog.new({
  header: 'This is a new blog number 2',
  sub_header: 'its about testing if all works well',
  content: 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit, distinctio, officia beatae qui aspernatur voluptatibus libero rerum et voluptate, necessitatibus vitae sunt ipsam reprehenderit tempore, possimus. Saepe quae sint repellendus labore esse similique corporis, a perferendis. Necessitatibus totam voluptatum neque, nihil enim ab unde sint repudiandae veritatis explicabo sit, quae culpa libero tempora excepturi maiores rerum consectetur amet suscipit atque laboriosam quisquam deserunt ut omnis. Repellendus rerum corrupti dolorum itaque doloribus qui excepturi voluptas eveniet esse harum, ducimus cum dignissimos, aperiam et error necessitatibus nam assumenda, porro modi obcaecati ipsam aliquid. Incidunt, officia magnam cum neque laboriosam sunt nesciunt. Pariatur repellendus vel aspernatur dolores maxime nesciunt dolore, quisquam quaerat voluptates ratione culpa sequi harum necessitatibus illum in doloremque expedita alias laboriosam perspiciatis! Perferendis possimus eum cupiditate earum natus dolore necessitatibus assumenda nostrum quam. Corporis exercitationem, optio culpa nam, saepe repellat quasi recusandae ad delectus pariatur praesentium autem natus, esse adipisci.',
  author: 'Deep Biswas / Lyubomir Dias',
  author_info: 'Specialist in social impact with over 10 years experiance.',
  hashtags: 'Social Impact / Blog / Testing'
})
blog2.save!



















