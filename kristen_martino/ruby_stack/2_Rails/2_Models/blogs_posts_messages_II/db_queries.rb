# Create 5 users
User.create(first_name:"Kristen", last_name:"Martino", email_address:"kristen@martino.com")
User.create(first_name:"Vincent", last_name:"Martino", email_address:"vincent@martino.com")
User.create(first_name:"Marianne", last_name:"Martino", email_address:"marianne@martino.com")
User.create(first_name:"Jerry", last_name:"Martino", email_address:"jerry@martino.com")
User.create(first_name:"Gerard", last_name:"Martino", email_address:"gerard@martino.com")

# Create 5 blogs
Blog.create(name:"Blog 1", description:"Blog 1")
Blog.create(name:"Blog 2", description:"Blog 2")
Blog.create(name:"Blog 3", description:"Blog 3")
Blog.create(name:"Blog 4", description:"Blog 4")
Blog.create(name:"Blog 5", description:"Blog 5")

# Have the first 3 blogs be owned by the first user
Owner.create(blog: Blog.first, user: User.first)
Owner.create(blog: Blog.second, user: User.first)
Owner.create(blog: Blog.third, user: User.first)

# Have the 4th blog you create be owned by the second user
Owner.create(blog: Blog.fourth, user: User.second)

# Have the 5th blog you create be owned by the last user
Owner.create(blog: Blog.fifth, user: User.last)

# Have the third user own all of the blogs that were created.
blogs = Blog.all
blogs.each do |blog|
  Owner.create(blog: blog, user: User.third)
end

# Have the first user create 3 posts for the blog with an id of 2. Remember that you shouldn't do Post.create(user: User.first, blog_id: 2),
# but more like Post.create(user: User.first, blog: Blog.find(2)). Again, you should never reference the foreign key in Rails.
Post.create(user: User.first, blog: Blog.find(2), title: "Post 1", content: "Post 1")
Post.create(user: User.first, blog: Blog.find(2), title: "Post 2", content: "Post 2")
Post.create(user: User.first, blog: Blog.find(2), title: "Post 3", content: "Post 3")

# Have the second user create 5 posts for the last Blog.
Post.create(user: User.second, blog: Blog.last, title: "Post 1", content: "Post 1")
Post.create(user: User.second, blog: Blog.last, title: "Post 2", content: "Post 2")
Post.create(user: User.second, blog: Blog.last, title: "Post 3", content: "Post 3")
Post.create(user: User.second, blog: Blog.last, title: "Post 4", content: "Post 4")
Post.create(user: User.second, blog: Blog.last, title: "Post 5", content: "Post 5")

# Have the 3rd user create several posts for different blogs.
Post.create(user: User.third, blog: Blog.first, title: "Post 1", content: "Post 1")
Post.create(user: User.third, blog: Blog.second, title: "Post 2", content: "Post 2")
Post.create(user: User.third, blog: Blog.third, title: "Post 3", content: "Post 3")

# Have the 3rd user create 2 messages for the first post created and 3 messages for the second post created
Message.create(author: "Anonymous", message: "This is a message", post: Post.first, user: User.third)
Message.create(author: "Anonymous", message: "This is another message", post: Post.first, user: User.third)

Message.create(author: "Anonymous", message: "This is a message", post: Post.second, user: User.third)
Message.create(author: "Anonymous", message: "This is a message", post: Post.second, user: User.third)
Message.create(author: "Anonymous", message: "This is a message", post: Post.second, user: User.third)

# Have the 4th user create 3 messages for the last post you created.
Message.create(author: "Anonymous", message: "This is a message", post: Post.last, user: User.fourth)
Message.create(author: "Anonymous", message: "This is a message", post: Post.last, user: User.fourth)
Message.create(author: "Anonymous", message: "This is a message", post: Post.last, user: User.fourth)

# Change the owner of the 2nd post to the last user.
Post.find(2).update(user: User.last)

# Change the 2nd post's content to be something else.
Post.find(2).update(content: "something else")

# Retrieve all blogs owned by the 3rd user (make this work by simply doing: User.find(3).blogs).
User.find(3).blogs

# Retrieve all posts that were created by the 3rd user
User.find(3).posts

# Retrieve all messages left by the 3rd user
User.find(3).messages

# Retrieve all posts associated with the blog id 5 as well as who left these posts.
Post.joins(:user).select("*").where("blog_id = 5")

# Retrieve all messages associated with the blog id 5 along with all the user information of those who left the messages
# These work also
# Message.joins(:user, :post).select("*").where("blog_id = 5")
# Message.joins(:user, :post).select("*").where("blog_id = ?", 5)
Message.joins(:user, :post).select("*").where(post:Blog.find(5).posts)

# Grab all user information of those that own the first blog (make this work by allowing Blog.first.owners to work).
Owner.joins(:user, :blog).select("users.first_name, users.last_name, users.email_address").where("blog_id = 1")

# Change it so that the first blog is no longer owned by the first user.
Owner.find_by(user: User.first, blog: Blog.first).destroy
