class House

  attr_reader :price, :address, :rooms, :rooms_from_category, :area

  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
    @area = area
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

  def price_per_square_foot
    (@price.to_f / area.to_f).round(2)
  end

#does not work but ran out of time
  def rooms_sorted_by_area
    room_sort = @rooms.map do |room|
      room.sort_by {|area| area.size}
    end
  end
end
