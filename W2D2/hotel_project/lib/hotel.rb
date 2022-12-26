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
end
