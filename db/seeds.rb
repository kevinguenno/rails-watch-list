require "open-uri"

puts "Cleaning db..."
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Creating 4 movies ..."
movie_1 = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
movie_2 = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
movie_3 = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
movie_4 = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)


image_1 = URI.open("https://plus.unsplash.com/premium_photo-1661284807863-89df07cde422?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bW92aWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
image_2 = URI.open("https://images.unsplash.com/photo-1485846234645-a62644f84728?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bW92aWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
image_3 = URI.open("https://images.unsplash.com/photo-1536440136628-849c177e76a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8bW92aWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
image_4 = URI.open("https://images.unsplash.com/photo-1598899134739-24c46f58b8c0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8bW92aWV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")

puts "Creating 4 lists ..."
list_1 = List.new(name: "Drame")
list_1.photo.attach(io: image_1, filename: "image-1.png", content_type: "image.png")
list_1.save
list_2 = List.new(name: "Comedie")
list_2.photo.attach(io: image_2, filename: "image-2.png", content_type: "image.png")
list_2.save
list_3 = List.new(name: "Documentaire")
list_3.photo.attach(io: image_3, filename: "image-3.png", content_type: "image.png")
list_3.save
list_4 = List.new(name: "Guerre")
list_4.photo.attach(io: image_4, filename: "image-4.png", content_type: "image.png")
list_4.save

puts "Creating 4 bookmarks ..."
Bookmark.create({ list: list_1, movie: movie_1, comment: "superbe collection" })
Bookmark.create({ list: list_2, movie: movie_2, comment: "superbe collection" })
Bookmark.create({ list: list_1, movie: movie_3, comment: "superbe collection" })
Bookmark.create({ list: list_1, movie: movie_4, comment: "superbe collection" })

puts "Finished"
