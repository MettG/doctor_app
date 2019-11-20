
minutes = [0,15,30,45]
20.times do 
	date = DateTime.parse("#{Faker::Date.forward(days: 23)} #{rand(25)}:#{minutes.sample}:00".remove(','))
	
	Appointment.create(
		date: date,
		user_id: User.all.sample.id,
		doctor_id: Doctor.all.sample.id
	)
end

puts "Seeds Generated!"