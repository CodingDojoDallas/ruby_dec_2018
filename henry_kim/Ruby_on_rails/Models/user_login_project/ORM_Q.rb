1. See if it allows you to insert some records when the fields are not meeting the validation rules we set (e.g. try to create a record where age is 5 or above 150, or where the first name is just one character, etc).

User.create(last_name:"Help", email:"1@cd.com", age: 10).errors.full_messages

2. Make sure your console returns appropriate error messages when you try to save something that's not meeting the validation rules.

User.create(last_name:"Help", email:"1@cd.com", age: 10).errors.full_messages

3.Know how to retrieve all users.

User.all

4.Know how to get the first user.

User.fist

5. Know how to get the last user.

User.last

6. Know how to get the users sorted by their first name (order by first_name DESC).

User.order(first_name: :DESC)

7. Get the record of the user whose id is 3 and UPDATE the person's last_name to something else. Know how to do this directly in the console using .find and .save.

jon = User.find(2)
jon.update(first_name: "John")

8. Know how to delete a record of a user whose id is 4 (use something like User.find(2).destroy...).

User.find(4).destroy
