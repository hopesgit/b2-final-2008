# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
memorial = Hospital.create(name: "Grey Sloan Memorial Hospital")
seaside = Hospital.create(name: "Seaside Health & Wellness Center")

meredith = Doctor.create(name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", hospital_id: memorial.id)
alex = Doctor.create(name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", hospital_id: memorial.id)
miranda = Doctor.create(name: "Miranda Bailey", specialty: "General Surgery", education: "Stanford University", hospital_id: seaside.id)
derek = Doctor.create(name: "Derek McDreamy Shepherd", specialty: "Attending Surgeon", education: "University of Pennsylvania", hospital_id: seaside.id)

Patient.create(name: "Katie Bryce", age: 24)
Patient.create(name: "Denny Duquette", age: 39)
Patient.create(name: "Rebecca Pope", age: 32)
Patient.create(name: "Zola Shepherd", age: 2)
