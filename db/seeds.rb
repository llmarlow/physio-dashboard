# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times { Patient.create({
             name: Faker::Name.name,
             phone_number: Faker::PhoneNumber.cell_phone,
             created_at: rand(5.years.ago..Time.now)
         }) }

11.times { Patient.create({
             name: Faker::Name.name,
             phone_number: Faker::PhoneNumber.cell_phone,
             created_at: rand(1.week.ago..Time.now)
         }) }

Patient.all.each do |patient|
  5.times { patient.appointments.create({
                       patient_id: patient.id,
                       start_time: Faker::Time.between(DateTime.now - 1, DateTime.now),
                    }) } 
end

Appointment.all.each do |appointment|
  appointment.end_time = appointment.start_time + 30.minutes
  appointment.save
end
