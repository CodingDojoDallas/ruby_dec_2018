User.create(first_name: "Kristen", last_name: "Martino", email_address: "kristen@martino.com", age: 29)
User.create(first_name: "Vincent", last_name: "Martino", email_address: "vincent@martino.com", age: 24)
User.create(first_name: "Taylor", last_name: "Martino", email_address: "taylor@martino.com", age: 24)
User.create(first_name: "Kristen", last_name: "Martino", email_address: "kristen@martino.com", age: 29).valid?
User.create(first_name: "Kristen", last_name: "Martino", email_address: "kristen@martino.com", age: 29).errors
User.create(first_name: "Kristen", last_name: "Martino", email_address: "kristen@martino.com", age: 29).errors.full_messages
User.create(first_name: "Jon", last_name: "Stark", email_address: "jon@stark.com", age: 19)

#1
user1 = User.new(first_name: "Arya", last_name: "Stark", email_address: "arya@", age: 13)
user1.save!
user1 = User.new(first_name: "Arya", last_name: "Stark", email_address: "arya@stark.com", age: 0)
user1.valid?
user1.errors.full_messages
user1 = User.new(first_name: "Arya", last_name: "S", email_address: "arya@stark.com", age: 13)
user1.errors.full_messages
#2 Console returns appropriate messages
#3
User.all
#4
User.first
#5
User.last
#6
User.order(first_name: :desc)
#7
User.find(3).update(last_name: "Olanski")
#8
User.find(4).destroy!
