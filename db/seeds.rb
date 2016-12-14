# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ServiceType.delete_all
s_t = ServiceType.create([{name: 'déménagement'}, {name: 'baby-sitting'}, {name: 'ménage'}, {name: 'livraison'}, {name: 'réparation'}])

u = User.create(password: '123456', first_name: 'Joseph', last_name: 'Dupond', address: '5 Résidence des jardins occitants', city: 'Ramonville', postal_code: 32000, age: 32, job:'Ingénieur aéronautique', skills: 'Plomberie, livreur(courses de 20 mins)', rating: '4,7/5', email: 'jojo@gmail.com', role: false)

puts u.errors.full_messages

service = Service.create(service_type: s_t.first, user: u, participants_name: 'Joseph, Eric', participants_number: 2, name: 'Baby-sitting Toulouse Ramonville', time_spent: 3.0, description: 'Bonjour, j aurais besoin que l on garde mon fils de 5 ans')

puts service.errors.full_messages