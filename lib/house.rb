class House

  attr_reader :price, :address, :rooms, :rooms_from_category, :area

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def rooms_from_category(category)
    @rooms.find_all do |room|
      room.category == category
    end
  end

  def area
    @rooms.reduce(0) do |house_area, room|
      house_area += room.area
    end
  end
end
