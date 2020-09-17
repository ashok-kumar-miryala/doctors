# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


doctors = Doctor.create([
	{name:"Vinay"},
	{name:"Rajesh"},
	{name: "Mahesh"},
	{name:"Sudheer"}
])

patients = Patient.create([
{first_name: "Test1", last_name: "test", age: 4, street: "colony", phone: "12344", city: "Hyderabad", state:"TG"},
{first_name: "Test2", last_name: "test", age: 4, street: "colony", phone: "12344", city: "Hyderabad", state:"TG"},
{first_name: "Test3", last_name: "test", age: 4, street: "colony", phone: "12344", city: "Hyderabad", state:"TG"},
{first_name: "Test4", last_name: "test", age: 4, street: "colony", phone: "12344", city: "Hyderabad", state:"TG"}
])

users = User.create([
	{email: "test1@gmail.com", name: "test1", encrypted_password: "$2a$12$qwNoAm40tYZIUrmlx9a1c.mgNnvEtNNPTTLwZ.PUhb8BWjhlxg.Hq"},
	{email: "test2@gmail.com", name: "test2",  encrypted_password: "$2a$12$qwNoAm40tYZIUrmlx9a1c.mgNnvEtNNPTTLwZ.PUhb8BWjhlxg.Hq"},
	{email: "test3@gmail.com", name: "test3", encrypted_password: "$2a$12$qwNoAm40tYZIUrmlx9a1c.mgNnvEtNNPTTLwZ.PUhb8BWjhlxg.Hq"},
	{email: "test4@gmail.com", name: "test4", encrypted_password: "$2a$12$qwNoAm40tYZIUrmlx9a1c.mgNnvEtNNPTTLwZ.PUhb8BWjhlxg.Hq"}
])

notes = Note.create([
	{patient_id: 1,  message: "Testing patient1"},
	{patient_id: 2,  message: "Testing patient2"},
	{patient_id: 3,  message: "Testing patient3"},
	{patient_id: 4,  message: "Testing patient4"}
])

appointments = Appointment.create([
	{ doctor_id:1, patient_id:1, date: "2020-09-18", time: "17:50:02"},
	{ doctor_id:1, patient_id:2, date: "2020-09-18", time: "16:50:02"},
	{ doctor_id:1, patient_id:3, date: "2020-09-19", time: "17:50:02"}, 
	{ doctor_id:2, patient_id:2, date: "2020-09-18",  time: "14:50:02"}, 
	{ doctor_id:2, patient_id:2, date: "2020-09-18",  time: "14:50:02"}, 
	{ doctor_id:3, patient_id:3, date: "2020-09-19", time: "14:50:02"}, 
	{ doctor_id:3, patient_id:3, date: "2020-09-19", time: "12:50:02"}, 
	{ doctor_id:4, patient_id:4, date: "2020-09-20", time: "14:50:02"},
	{ doctor_id:4, patient_id:4, date: "2020-09-20", time: "16:50:02"}
])



