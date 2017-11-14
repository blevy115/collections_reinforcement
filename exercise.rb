hash = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

capacity_201 = 0
hash[:data].each do |room, info|
  info.each do |array|
    if array[:room_number] == "201"
      capacity_201 += array[:capacity]
    end
  end
end


puts capacity_201

events_201 = []
hash[:data].each do |room, info|
  info.each do |array|
    if array[:room_id] == 1
      events_201 << array[:attendees]
    end
  end
end

# puts events_201

events_201.each do |event|
  if event < capacity_201
    puts "ok"
  else
    puts "You have too many people."
  end
end
