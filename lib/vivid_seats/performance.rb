module VividSeats
  class Performance
    def all(query={})
      API.performances(query)
    end
  end
end
