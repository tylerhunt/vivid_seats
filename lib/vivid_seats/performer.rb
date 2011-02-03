module VividSeats
  class Performer
    def all(query={})
      API.performers(query)
    end

    def find(performer_id)
      all(:performerId => performer_id).first
    end
  end
end
