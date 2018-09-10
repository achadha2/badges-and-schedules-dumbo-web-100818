speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  batch = []
  badges = speakers.each { |name| batch.push(badge_maker(name))} 
  return batch
end

def assign_rooms(speakers)
  room_assignments = []
  message = speakers.each_with_index{|name, i| room_assignments.push("Hello, #{name}! You'll be assigned to room #{i+1}!")}
  room_assignments.push(message)
end

assign_rooms(speakers)

def printer(speakers)
  puts batch_badge_creator(speakers)
  puts assign_rooms(speakers)
end