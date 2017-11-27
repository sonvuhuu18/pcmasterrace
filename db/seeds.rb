User.create! name: "Admin", email: "admin@gmail.com",
  password: "foobar", password_confirmation: "foobar", admin: true,
  activated: true, activated_at: Time.zone.now

Category.create name: "GPU"
Category.create name: "CPU"
Category.create name: "Hard Drive"
Category.create name: "Ram"

Manufacturer.create name: "NVidia"
Manufacturer.create name: "AMD"

99.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  User.create! name: name, email: email,
    password: password, password_confirmation: password,
    activated: true, activated_at: Time.zone.now
end
