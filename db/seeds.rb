# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a2 = User.create(fname: 'Jake', lname: 'Sully', email: 'sullyj@gmail.com', username: 'Avatar', password: 'Neytiri')
a3 = User.create(fname: 'William', lname: 'Wallace', email: 'wallacew@gmail.com', username: 'Braveheart', password: 'Murron')
a4 = User.create(fname: 'John', lname: 'Dunbar', email: 'dunbarj@gmail.com', username: 'Wolves', password: 'Dances')

b1 = Post.create(post_text: 'Avatar has become my favorite movie of all time. I must have seen it at least 30 times by now. I cannot wait to see the sequels.', which_movie: 'Avatar', user_id: 2)
b2 = Post.create(post_text: 'This movie is awesome. It has a 3-hour & 1-minute runtime & I watched it 13 times while it was still in the theater. That says something.', which_movie: 'Braveheart', user_id: 3)
b3 = Post.create(post_text: 'The special effects were amazing. The characters were believable and solid. Even the storyline was pretty awesome.', which_movie: 'Avatar', user_id: 2)
b4 = Post.create(post_text: 'Great movie. Must see.', which_movie: 'Dances with Wolves', user_id: 4)

c1 = Comment.create(comment_text: 'I agree. Best movie ever.', post_id: 1)
c2 = Comment.create(comment_text: 'That’s a lot of times in the theater. It was a great movie, so I understand.', post_id: 2)
c3 = Comment.create(comment_text: 'Sequels? There’s gonna be sequels? Awesome!', post_id: 1)
c4 = Comment.create(comment_text: 'Dances with Wolves is my favorite movie. I agree….it’s a must see…', post_id: 4)
c5 = Comment.create(comment_text: 'The special effects were definitely great.', post_id: 3)
