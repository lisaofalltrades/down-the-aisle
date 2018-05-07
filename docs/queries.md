# Postgres Queries

## Purpose
- identify actions for users & guests
- test queries in rails console
- thoroughly test association

## Benefits
- Aid in creation of seed file & controller

## User UI/UX

### Create a wedding
```ruby
Wedding.create(nickname: 'jamesnlisa-sac', user_id: 1)
```

### Show all weddings belonging to a user
```ruby
User.find(1).weddings
```

### Create an event belonging to a specific wedding
```ruby
Event.create(title: 'Friday Night Mingle', location: 'Regency Restaurant', address: '123 main street', start_time: '18-10-26 21:00:00', end_time: '18-10-26 23:59:00', wedding_id: 1)
```

### Show all events belonging to a wedding
```ruby
Wedding.find(1).events
```

### Create new household to specific wedding
```ruby
Household.create(name: 'Nguyen Family', address: '123 Main Street', wedding_id: 1)
```

### Show all households for a certain wedding
```ruby
Wedding.find(1).households
```

### Show households count per wedding
```ruby
Wedding.find(1).households.count
```
### Add new guest to specific wedding
```ruby
Guest.create(first_name: 'Dolly', last_name: 'Ngo', email: 'dolly@mail.com', category: 'Bride\'s Friends', wedding_id: 1, household_id: 4)
```

### Show guest count per wedding
```ruby
Wedding.find(1).guests.count
```

### Show all guests per wedding

```ruby
#asc by last name
Event.find(3).guests.order(last_name: :asc)
```

### Show all guests grouped by household
```ruby
Event.find(3).guests.order(household_id: :asc)
```

### Show all guests grouped by table assignment per event
```ruby
```

### Show guest count per event
```ruby
Event.find(1).guests.count
```

### Show all guest per event
```ruby
#asc
Event.find(1).guests.order(last_name: :asc)
```

## Guest UI

### Guest to view/edit own info
```ruby
# view
Guest.find(1)

# update
Guest.find(1).update(email: 'dollyngo@mail.com')
```

### Show all events a guest is invited to
```ruby
Attendance.where(guest_id: 6)
```

### Guest have ability to RSVP to event
```ruby
Attendance.create(event_id: 1, guest_id: 1, attending: true)
```

### Guest have ability to change RSVP to event
```ruby
Attendance.where("event_id = 1 AND guest_id = 1").update(attending: false)
```
