10.times do |blog|
  Blog.create!(
    title: "this is my Blog post #{blog}",
    body:"this my Blog post body text#{blog}"
  )
end
puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Software Engineering #{skill}",
    percent_utilized: 15,
  )
end

puts "5 skills created"

15.times do |portfolio_items|
  Portfolio.create!(
    title:"this is my portfolio title #{portfolio_items}",
    subtitle: "My great service",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    main_image: "https://via.placeholder.com/600x400",
    thumb: "https://via.placeholder.com/350x200"
  )
end
puts "15 portfolio items created"