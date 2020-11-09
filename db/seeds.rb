# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.create(Name: "Meredith Grey", Specialty: "General Surgery", Education: "Harvard University", hospital_id: memorial.id)
Doctor.create(Name: "Alex Karev", Specialty: "Pediatric Surgery", Education: "Johns Hopkins University", hospital_id: memorial.id)
Doctor.create(Name: "Miranda Bailey", Specialty: "General Surgery", Education: "Stanford University", hospital_id: seaside.id)
Doctor.create(Name: "Derek McDreamy Shepherd", Specialty: "Attending Surgeon", Education: "University of Pennsylvania", hospital_id: seaside.id)

memorial = Hospital.create(Name: "Grey Sloan Memorial Hospital")
seaside = Hospital.create(Name: "Seaside Health & Wellness Center")

Patient.create(Name: "Katie Bryce", Age: 24)
Patient.create(Name: "Denny Duquette", Age: 39)
Patient.create(Name: "Rebecca Pope", Age: 32)
Patient.create(Name: "Zola Shepherd", Age: 2)
