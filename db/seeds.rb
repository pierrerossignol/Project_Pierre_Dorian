
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ServiceType.delete_all
Skill.delete_all
Service.delete_all
User.delete_all
s_t = ServiceType.create([{name: 'déménagement'}, {name: 'baby-sitting'}, {name: 'ménage'}, {name: 'livraison'}, {name: 'réparation'}])
s0 = ServiceType.where(name: 'ménage').first


u = User.new(password: '123456', first_name: 'Joseph', last_name: 'Dupond', address: '5 Résidence des jardins occitants', city: 'Ramonville', postal_code: 32000, job:'Ingénieur aéronautique', rating: '4,7/5', email: 'jojo@gmail.com', role: false, birthdate: '04/04/1990')
u.save
u.confirm

sk = Skill.create(service_type: s0, user: u)

u1 = User.new(password: '123456', first_name: 'Pierre', last_name: 'Rossignol', address: '5 Résidence des jardins occitants', city: 'Ramonville', postal_code: 32000, job:'Ingénieur aéronautique', rating: '4,7/5', email: 'pierre_rossignol@yahoo.fr', role: true, birthdate: '04/04/1985')
u1.save
u1.confirm

s1 = ServiceType.where(name: 'déménagement').first

sk = Skill.create(service_type: s1, user: u1)

service = Service.create(service_type: s1, user: u, participants_name: 'Joseph, Eric', participants_number: 2, name: 'Baby-sitting Toulouse Ramonville', time_spent: 3, description: 'Bonjour, j aurais besoin que l on garde mon fils de 5 ans')

service1 =  Service.create(service_type: s1, user: u, participants_name: 'Didier, Henri', participants_number: 2, name: 'Baby-sitting Toulouse Balma', time_spent: 3, description: 'Bonjour, j aurais besoin que l on garde mon père de 95 ans', service_type_id:"Bay-sitting")

service2 =  Service.create(service_type: s1, user: u, participants_name: 'Romain, Kevin', participants_number: 2, name: 'Baby-sitting Toulouse Blagnac', time_spent: 3, description: 'Bonjour, j aurais besoin que l on garde mon chiot de 6 mois')

service3 =  Service.create(service_type: s1, user: u, participants_name: 'Noham, Franck', participants_number: 6, name: 'Baby-sitting Toulouse Tournefeuille', time_spent: 3, description: 'Bonjour, j aurais besoin que l on garde mon hamster de 1 an')