# Seed your database here

puts "🌱 Seeding...."


sam = User.create(

    name: "Sam", 
    profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U018W9H54N6-6bb69b64ec24-512"

)
anna = User.create(

    name: "Anna", 
    profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U01HDB7FV4K-g4a57c08aae2-512"

)
eva = User.create(

    name: "Eva", 
    profile_pic: "https://ca.slack-edge.com/T02MD9XTF-U0249FRF0TW-c9095395a389-512"

)
puts "🌿 > Seeding Users - Creating User Instances in our Database"



puts "✅ Done seeding!"
