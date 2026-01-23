
5.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end
puts "5 Topics created"


10.times do |blog|
  Blog.create!(
    title: "Blog post #{blog}",
    body: "this my Blog post body text #{blog}",
    topic_id: Topic.all.sample.id
  )
end
puts "10 blog posts created"


5.times do |skill|
  Skill.create!(
    title: "Software Engineering #{skill}",
    percent_utilized: 15
  )
end
puts "5 skills created"


15.times do |portfolio_items|
  Portfolio.create!(
    title: "my portfolio title #{portfolio_items}",
    subtitle: "Ruby Programming",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
      incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
       ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
       in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Rejw1o-O-KUg6obEIt3jEkabeMY8ldoAmg&s",
    thumb: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Rejw1o-O-KUg6obEIt3jEkabeMY8ldoAmg&s"
  )
end


1.times do |portfolio_items|
  Portfolio.create!(
    title: "my portfolio title #{portfolio_items}",
    subtitle: "Angular ",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
      incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
       ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit
       in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat
        non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Rejw1o-O-KUg6obEIt3jEkabeMY8ldoAmg&s",
    thumb: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-Rejw1o-O-KUg6obEIt3jEkabeMY8ldoAmg&s"
  )
end
puts "16 portfolio items created"

8.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}",
    portfolio_id: Portfolio.last.id
  )
end

puts "8 Technologies created"
