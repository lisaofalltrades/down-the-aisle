User.destroy_all
Wedding.destroy_all
Event.destroy_all
Household.destroy_all
Guest.destroy_all

lisa = User.create(first_name: 'Lisa', last_name: 'Nguyen', email: 'lisathuanguyen@gmail.com', zipcode: 95116, password: '1234', password_confirmation: '1234')

Wedding.create(nickname: 'jamesnlisa-sac', user_id: 1)
Wedding.create(nickname: 'jamesnlisa-sj', user_id: 1)

Event.create(title: 'Rehearsal', location: 'Hotel Citizen', address: '123 main street', start_time: '15-10-26 15:00:00', end_time: '18-10-26 18:00:00', wedding_id: 1)

Event.create(title: 'Rehearsal Dinner', location: 'Regency Restaurant', address: '123 main street', start_time: '18-10-26 18:00:00', end_time: '20-10-26 11:30:00', wedding_id: 1)

Event.create(title: 'Friday Night Mingle', location: 'Regency Restaurant', address: '123 main street', start_time: '18-10-26 21:00:00', end_time: '18-10-26 23:59:00', wedding_id: 1)

Event.create(title: 'Ceremony', location: 'Hotel Citizen', address: '123 main street', start_time: '18-10-27 10:00:00', end_time: '18-10-27 11:30:00', wedding_id: 1)

Event.create(title: 'Reception', location: 'Library Galleria', address: '123 main street', start_time: '18-10-27 17:00:00', end_time: '18-10-27 21:00:00', wedding_id: 1)

Event.create(title: 'Tea Ceremony', location: 'Nguyen Household', address: '123 main street', start_time: '18-11-17 09:00:00', end_time: '18-11-17 11:00:00', wedding_id: 2)

Event.create(title: 'Church Ceremony', location: 'Our Lady of Refuge', address: '123 main street', start_time: '18-11-17 14:00:00', end_time: '18-11-17 16:00:00', wedding_id: 2)

Event.create(title: 'Reception', location: 'Grand Fortune', address: '123 main street', start_time: '18-11-17 17:00:00', end_time: '18-11-17 23:00:00', wedding_id: 2)

Household.create(name: 'Nguyen Family', address: '123 Main Street', wedding_id: 1)

Household.create(name: 'Nguyen Family', address: '123 Main Street', wedding_id: 2)

Household.create(name: 'Ngo Family', address: '123 Main Street', wedding_id: 2)

Household.create(name: 'Dolly Ngo & Steven Cai', address: '123 Main Street', wedding_id: 1)
# GUESTS
Guest.create(first_name: 'Dolly', last_name: 'Ngo', email: 'dolly@mail.com', category: 'Bride\'s Friends', wedding_id: 1, household_id: 4)

Guest.create(first_name: 'Steven', last_name: 'Cai', email: 'tom@mail.com', category: 'Bride\'s Friends', wedding_id: 1, household_id: 4)


Guest.create(first_name: 'Tom', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 1, household_id: 1)

Guest.create(first_name: 'Hoa', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 1, household_id: 1)

Guest.create(first_name: 'Cathy', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 1, household_id: 1)

Guest.create(first_name: 'Lynn', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 1, household_id: 1)

Guest.create(first_name: 'Tony', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 1, household_id: 1)

Guest.create(first_name: 'David', last_name: 'Ngo', email: 'tom@mail.com', category: 'Bride\'s Friends', wedding_id: 2, household_id: 3)

Guest.create(first_name: 'Annie', last_name: 'Ngo', email: 'tom@mail.com', category: 'Bride\'s Friends', wedding_id: 2, household_id: 3)

Guest.create(first_name: 'Tom', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 2, household_id: 2)

Guest.create(first_name: 'Hoa', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 2, household_id: 2)

Guest.create(first_name: 'Cathy', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 2, household_id: 2)

Guest.create(first_name: 'Lynn', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 2, household_id: 2)

Guest.create(first_name: 'Tony', last_name: 'Nguyen', email: 'tom@mail.com', category: 'Bride\'s Family', wedding_id: 2, household_id: 2)

Attendance.create(event_id: 1, guest_id: 1, attending: true)

Attendance.create(event_id: 2, guest_id: 1, attending: true)

Attendance.create(event_id: 3, guest_id: 6, attending: false)

Attendance.create(event_id: 3, guest_id: 7, attending: false)
