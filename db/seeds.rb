# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ServiceType.delete_all
Service.delete_all
s_t = ServiceType.create([{name: 'déménagement'}, {name: 'baby-sitting'}, {name: 'ménage'}, {name: 'livraison'}, {name: 'réparation'}])

u = User.create(password: '123456', first_name: 'Joseph', last_name: 'Dupond', address: '5 Résidence des jardins occitants', city: 'Ramonville', postal_code: 32000, birthdate: '01/05/1984', job:'Ingénieur aéronautique', skills: 'Plomberie, livreur(courses de 20 mins)', rating: '4,7/5', email: 'jojo@gmail.com', role: false)
u1 = User.create(password: '123456', first_name: 'Pierre', last_name: 'Rossignol', address: '5 Résidence des jardins occitants', city: 'Ramonville', postal_code: 32000, birthdate: '01/05/1985', job:'Ingénieur aéronautique', skills: 'Plomberie, livreur(courses de 20 mins)', rating: '4,7/5', email: 'pierre_rossignol@yahoo.fr', role: true)
service = Service.create(service_type: s_t.first, user: u, participants_name: 'Joseph, Eric', participants_number: 2, name: 'Baby-sitting Toulouse Ramonville', time_spent: 3, description: 'Bonjour, j aurais besoin que l on garde mon fils de 5 ans', place: 'Ramonville')
service1 = Service.create(service_type: s_t.first, user: u, participants_name: 'Mohamed, Didier', participants_number: 2, name: 'Baby-sitting Toulouse Blagnac', time_spent: 3, description: 'Bonjour, j aurais besoin que l on garde mon fils de 25 ans', place: 'Blagnac')
service2 = Service.create(service_type: s_t.first, user: u, participants_name: 'Martine, Gisele', participants_number: 2, name: 'Baby-sitting Toulouse Balma', time_spent: 5, description: 'Bonjour, j aurais besoin que l on garde mon fils de 80 ans', place: 'Balma')
service3 = Service.create(service_type: s_t.first, user: u, participants_name: 'Martine, Gisele', participants_number: 2, name: 'Baby-sitting Toulouse Beauzelle', time_spent: 4, description: 'Bonjour, j aurais besoin que l on garde mon fils de 10 ans', place: 'Beauzelle', hour_beginning_service:'14:00')