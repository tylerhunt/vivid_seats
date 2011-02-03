module VividSeats
  class Venue
    def all(query={})
      API.venues(query)
    end
  end
end
