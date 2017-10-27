# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = [
  {
    name: "funny"
  },
  {
    name: "politics"
  },
  {
    name: "sports"
  },
  {
    name: "yarraks"
  }  
]


videos = [
  {
    url: "https://www.youtube.com/watch?v=ZBUiXjz4vSE",
    title: "Kafası Güzel Gencin Ahsen TV'yle Röportajı",
    thumbnail: "https://i.ytimg.com/vi/EbxIXpZOi7s/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAKWyQi9yTZU1Lp4U6oNKy8NP3FNw",
    year: 2015,
    rating: 0,
    summary: "Kafası Güzel Gencin Ahsen TV'yle Röportajı İBRETLİK"
  },
  {
    url: "https://www.youtube.com/watch?v=nBRYcvzxqs8",
    title: "Başakşehir'de Kavgaya Yol Açan Sosyal Deney",
    thumbnail: "https://i.ytimg.com/vi/EbxIXpZOi7s/hqdefault.jpg?sqp=-oaymwEXCNACELwBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLAKWyQi9yTZU1Lp4U6oNKy8NP3FNw",
    year: 2016,
    rating: 0,
    summary: "Başakşehir'de Kavgaya Yol Açan Sosyal Deney"
  }
]

actors = [
  {
    name: "Ahmet",
    img: "https://galeri12.uludagsozluk.com/542/ahsen-tv_906062.jpg",
    bio: "Ahsen TV videolari yapar",
    quote: "Reis naber?"
  },
  {
    name: "Burak",
    img: "https://avatars0.githubusercontent.com/u/8701898?s=460&v=4",
    bio: "Yaraks",
    quote: "bokbokbokbokb"
  }
]

categories.each { |c| Category.create(c) }

videos.each { |v| Video.create(v) }

actors.each { |a| Actor.create(a) }

Video.first.category_ids = [1]
Video.first.actor_ids = [1]

Video.second.category_ids = [2, 4]
Video.second.actor_ids = [2]