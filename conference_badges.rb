speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
  batch = []
  speakers.each { |name| batch.push(badge_maker(name))} 
  return batch
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index{|name, i| room_assignments.push("Hello, #{name}! You'll be assigned to room #{i+1}!")}
  return room_assignments
end

assign_rooms(speakers)

def printer(speakers)
  badges = batch_badge_creator(speakers)
  room_assig = assign_rooms(speakers)
  
  badges.each {|badge| puts badge}
  room_assig.each {|room| puts room}
  
end