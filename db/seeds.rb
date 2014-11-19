# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

N = 75

user1 = User.new
user1.first_name = 'Nilo'
user1.last_name = 'Redini'
user1.email = 'lol@lol.it'
user1.password = 'asdasdasd'
user1.password_confirmation = 'asdasdasd'
user1.n_hosted = 75
user1.image = File.open(Rails.root.join('app', 'assets', 'images', 'medium', 'johndoe.jpg'))
user1.save!

img = File.open(Rails.root.join('app', 'assets', 'images', 'original', 'suppr_default.jpg'))

N.times do 
  n = rand(1..365*60)
  Dinner.create(
                :host => user1, 
                :date => n.days.from_now, 
                :location => "Test1", 
                :title => "test", 
                :description => "test", 
                :category => "Italian", 
                :price => 5.0, 
                :seats => 5, 
                :seats_available => 5, 
                :stamp => DateTime.current(), 
                :created_at => DateTime.current(), 
                :updated_at => DateTime.current(), 
                :image => img,
                :currency => '$'
                )
end

