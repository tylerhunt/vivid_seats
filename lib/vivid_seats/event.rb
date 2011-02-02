module VividSeats
  class Event
    def all(query={})
      API.events(query)
    end
  end
end
