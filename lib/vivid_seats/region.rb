module VividSeats
  class Region
    def all(query={})
      API.regions(query)
    end
  end
end
