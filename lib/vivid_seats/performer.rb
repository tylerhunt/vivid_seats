module VividSeats
  class Performer
    def all(query={})
      API.performers(query)
    end
  end
end
