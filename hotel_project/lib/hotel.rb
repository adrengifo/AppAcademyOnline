require_relative "room"

class Hotel
  def initialize (name, room_Hash)
    @name = name
    @rooms = {}
    room_Hash.each do |key, value|
        @rooms[key]=Room.new(value)
    end
  end

  def name
    @name.split(" ").map{|word| word.capitalize}.join(" ")
  end

  def rooms
    return @rooms
  end

  def room_exists?(room_name)
    return @rooms.has_key?(room_name)
  end
  
  def check_in(person, room_name)
    if self.room_exists?(room_name)
        if @rooms[room_name].add_occupant(person)
            puts "check in successful"
        else
            puts "sorry, room is full"
        end
    else
        puts "sorry, room does not exist"
    end
  end
  
  def has_vacancy?
    @rooms.values.any? { |room| room.available_space > 0}
  end

  def list_rooms
    @rooms.each do |key, value|
        puts "#{key}: #{value.available_space}\n"
    end
end 

end
