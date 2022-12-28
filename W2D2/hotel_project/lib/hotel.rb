require_relative "room"

class Hotel
  attr_reader :rooms

  def initialize(name, hash)
    @name = name
    @rooms = {}
    hash.each do |room_name, capacity|
      @rooms[room_name] = Room.new(capacity)
    end
  end

  def name
    @name.split(" ").map(&:capitalize).join(" ")
  end

  def room_exists?(room_name)
    return true if @rooms[room_name]
    false
  end

  def check_in(person, room_name)
    unless self.room_exists?(room_name)
      return p "sorry, room does not exist"
    end

    if @rooms[room_name].add_occupant(person)
      p "check in successfull"
    else
      p "sorry, room is full"
    end
  end

  def 

  end
end
#testing
