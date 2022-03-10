# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#20.times do |i|
    #Book.find_or_create_by(
     #   image:"本の表紙#{i}",
      #  title:"本のタイトル#{i}",
       # author:"本の著者#{i}",
        #publisher:"本の出版社#{i}",
        #published_at:"本の発行年#{i}",
        #group:"Web班",
        #registrator:"大鳥",
        #price:"3000円",
        #summary:"概要",
        #isbn:"1923055023802",
        #google_books_api_id:"oiwefskdhfa#{i}",
        #status:"購入済",
        #comment:"備考#{i}",
    #)
#end

Group.find_or_create_by(name:"Web班")
Group.find_or_create_by(name:"Network班")
Group.find_or_create_by(name:"Grid班")
Group.find_or_create_by(name:"common")

AdminUser.create!(email: 'bigbird19980311@gmail.com', password: 'password', password_confirmation: 'password')

